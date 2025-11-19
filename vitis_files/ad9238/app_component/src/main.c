#include "xil_cache.h"
#include "xil_printf.h"
#include <stdint.h>
#include "sleep.h"

#define N            100
#define PL_BUF_ADDR  0x1000000u  

static inline uint32_t round_up(uint32_t x, uint32_t a) { return (x + a - 1) & ~(a - 1); }

int main(void)
{
    usleep(5000000);
    volatile uint64_t *buf64 = (volatile uint64_t *)PL_BUF_ADDR;

    uint32_t len = round_up(N * sizeof(uint64_t), 32);
    Xil_DCacheInvalidateRange(PL_BUF_ADDR, len);

    for (int i = 0; i < N; ++i) {
        uint64_t v = buf64[i];
        uint32_t lo = (uint32_t)(v & 0xFFFFFFFFu);
        uint32_t hi = (uint32_t)(v >> 32);
        xil_printf("[%3d] 0x%08lx_%08lx\r\n", i, (unsigned long)hi, (unsigned long)lo);
    }
    return 0;
}
