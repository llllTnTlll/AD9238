#include "xparameters.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "sleep.h"
#include <stdint.h>

#define IRQ_F2P_INDEX   0
#define FABRIC_IRQ_ID   (61 + IRQ_F2P_INDEX)

#define PL_BUF_ADDR  0x1000000u
#define CACHELINE    32u

static inline uint32_t round_up(uint32_t x, uint32_t a) { return (x + a - 1) & ~(a - 1); }

static void InvalidateFor(void *addr, uint32_t raw_len)
{
    uintptr_t a     = (uintptr_t)addr;
    uintptr_t start = a & ~(CACHELINE - 1);
    uintptr_t end   = round_up((uint32_t)(a + raw_len), CACHELINE);
    Xil_DCacheInvalidateRange(start, end - start);
    asm volatile("dsb sy" ::: "memory");
}

static void PsDecode(int N)
{
    volatile uint64_t *buf64 = (volatile uint64_t *)PL_BUF_ADDR;

    InvalidateFor((void*)PL_BUF_ADDR, (uint32_t)N * sizeof(uint64_t));

    for (int i = 0; i < N; ++i) {
        uint64_t v  = buf64[i];
        uint32_t lo = (uint32_t)(v & 0xFFFFFFFFu);
        uint32_t hi = (uint32_t)(v >> 32);
        xil_printf("[%3d] 0x%08lx_%08lx\r\n", i,
                   (unsigned long)hi, (unsigned long)lo);
    }
}


static XScuGic Intc;

typedef enum {
    PS_WAIT,
    PS_DECODE,
    PS_DONE
} PS_State;

static volatile PS_State state = PS_WAIT;

static void FabricIsr(void *Ref)
{
    (void)Ref;
    xil_printf("[ISR] edge irq on ID=%d\r\n", FABRIC_IRQ_ID);
    state = PS_DECODE;
}

static int GicSetupAndConnect(u16 IntId,
                              Xil_InterruptHandler Handler,
                              void *Ref)
{
    XScuGic_Config *Cfg = XScuGic_LookupConfig(XPAR_INTC_BASEADDR);
    if (!Cfg) return XST_FAILURE;

    int st = XScuGic_CfgInitialize(&Intc, Cfg, Cfg->CpuBaseAddress);
    if (st != XST_SUCCESS) return st;

    // 配置上升沿触发（优先级0xA0，仅示例）
    XScuGic_SetPriorityTriggerType(&Intc, IntId, 0xA0, 0x3);

    st = XScuGic_Connect(&Intc, IntId, Handler, Ref);
    if (st != XST_SUCCESS) return st;

    XScuGic_Enable(&Intc, IntId);

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
                                 &Intc);
    Xil_ExceptionEnable();
    return XST_SUCCESS;
}


int main(void)
{
    int st = GicSetupAndConnect(FABRIC_IRQ_ID, FabricIsr, NULL);
    if (st != XST_SUCCESS) {
        xil_printf("GIC setup failed: %d\r\n", st);
        return st;
    }

    xil_printf("Waiting for data\r\n");
    state = PS_WAIT;

    while (1) {
        switch (state) {
        case PS_WAIT:
            break;
        case PS_DECODE:
            PsDecode(100);
            state = PS_DONE;
            break;
        case PS_DONE:
            break;
        }

        usleep(1000);
    }
}
