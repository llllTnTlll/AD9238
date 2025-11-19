#include "xparameters.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "sleep.h"
#include <stdint.h>

// 状态机
typedef enum{
    PS_WAIT,
    PS_DECODE
} PS_States;

static PS_States State = PS_WAIT;


// 中断
#define IRQ_F2P_INDEX   0
#define FABRIC_IRQ_ID   (61 + IRQ_F2P_INDEX)

static XScuGic Intc;

void MyDeviceIsr(void *CallbackRef)
{   
    (void)CallbackRef;
    xil_printf("[ISR] edge irq on ID=%d\r\n", FABRIC_IRQ_ID);
    State = PS_DECODE;
}

// 解码
#define PL_BUF_ADDR  0x1000000u

void ReadDdrAs16(uint32_t N)
{
    Xil_DCacheInvalidateRange(PL_BUF_ADDR, N * sizeof(uint16_t));

    volatile uint16_t *p16 = (volatile uint16_t *)PL_BUF_ADDR;

    const float V_LSB = 10.0f / 4096.0f;  

    for (uint32_t i = 0; i < N; i++) 
    {
        uint16_t v = p16[i];
        float Vin = (v - 2048) * V_LSB;
        int32_t mv = (int32_t)(Vin * 1000.0f);  
        xil_printf("[%3d] %d mV\r\n", i, mv);
    }
}

int main(void)
{
    XScuGic_Config *Cfg = XScuGic_LookupConfig(XPAR_INTC_BASEADDR);
    int status = XScuGic_CfgInitialize(&Intc,Cfg,Cfg->CpuBaseAddress);
    if(status != XST_SUCCESS)
    {
        xil_printf("Initial Gic Failed!");
    }
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &Intc);
    Xil_ExceptionEnable();

    XScuGic_Connect(&Intc,
                FABRIC_IRQ_ID,
                (Xil_ExceptionHandler)MyDeviceIsr,
                (void *)NULL);

    XScuGic_SetPriorityTriggerType(&Intc, FABRIC_IRQ_ID, 0xA0, 0x3);
    XScuGic_Enable(&Intc, FABRIC_IRQ_ID);

    while (1)
    {
        if(State == PS_DECODE)
        {
            ReadDdrAs16(400);
            State = PS_WAIT;
        }
        usleep(1000);
    }
}