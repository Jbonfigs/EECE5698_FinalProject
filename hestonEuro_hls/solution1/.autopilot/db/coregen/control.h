// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of pCall
//        bit 31~0 - pCall[31:0] (Read/Write)
// 0x14 : Data signal of pCall
//        bit 31~0 - pCall[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of pPut
//        bit 31~0 - pPut[31:0] (Read/Write)
// 0x20 : Data signal of pPut
//        bit 31~0 - pPut[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of expect_r
//        bit 31~0 - expect_r[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of kappa
//        bit 31~0 - kappa[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of variance
//        bit 31~0 - variance[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of correlation
//        bit 31~0 - correlation[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of timeT
//        bit 31~0 - timeT[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of freeRate
//        bit 31~0 - freeRate[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of volatility
//        bit 31~0 - volatility[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of initPrice
//        bit 31~0 - initPrice[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of strikePrice
//        bit 31~0 - strikePrice[31:0] (Read/Write)
// 0x6c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL          0x00
#define CONTROL_ADDR_GIE              0x04
#define CONTROL_ADDR_IER              0x08
#define CONTROL_ADDR_ISR              0x0c
#define CONTROL_ADDR_PCALL_DATA       0x10
#define CONTROL_BITS_PCALL_DATA       64
#define CONTROL_ADDR_PPUT_DATA        0x1c
#define CONTROL_BITS_PPUT_DATA        64
#define CONTROL_ADDR_EXPECT_R_DATA    0x28
#define CONTROL_BITS_EXPECT_R_DATA    32
#define CONTROL_ADDR_KAPPA_DATA       0x30
#define CONTROL_BITS_KAPPA_DATA       32
#define CONTROL_ADDR_VARIANCE_DATA    0x38
#define CONTROL_BITS_VARIANCE_DATA    32
#define CONTROL_ADDR_CORRELATION_DATA 0x40
#define CONTROL_BITS_CORRELATION_DATA 32
#define CONTROL_ADDR_TIMET_DATA       0x48
#define CONTROL_BITS_TIMET_DATA       32
#define CONTROL_ADDR_FREERATE_DATA    0x50
#define CONTROL_BITS_FREERATE_DATA    32
#define CONTROL_ADDR_VOLATILITY_DATA  0x58
#define CONTROL_BITS_VOLATILITY_DATA  32
#define CONTROL_ADDR_INITPRICE_DATA   0x60
#define CONTROL_BITS_INITPRICE_DATA   32
#define CONTROL_ADDR_STRIKEPRICE_DATA 0x68
#define CONTROL_BITS_STRIKEPRICE_DATA 32
