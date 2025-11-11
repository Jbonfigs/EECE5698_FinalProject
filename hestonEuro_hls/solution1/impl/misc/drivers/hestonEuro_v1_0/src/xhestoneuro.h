// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XHESTONEURO_H
#define XHESTONEURO_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xhestoneuro_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XHestoneuro_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XHestoneuro;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHestoneuro_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHestoneuro_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHestoneuro_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHestoneuro_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XHestoneuro_Initialize(XHestoneuro *InstancePtr, UINTPTR BaseAddress);
XHestoneuro_Config* XHestoneuro_LookupConfig(UINTPTR BaseAddress);
#else
int XHestoneuro_Initialize(XHestoneuro *InstancePtr, u16 DeviceId);
XHestoneuro_Config* XHestoneuro_LookupConfig(u16 DeviceId);
#endif
int XHestoneuro_CfgInitialize(XHestoneuro *InstancePtr, XHestoneuro_Config *ConfigPtr);
#else
int XHestoneuro_Initialize(XHestoneuro *InstancePtr, const char* InstanceName);
int XHestoneuro_Release(XHestoneuro *InstancePtr);
#endif

void XHestoneuro_Start(XHestoneuro *InstancePtr);
u32 XHestoneuro_IsDone(XHestoneuro *InstancePtr);
u32 XHestoneuro_IsIdle(XHestoneuro *InstancePtr);
u32 XHestoneuro_IsReady(XHestoneuro *InstancePtr);
void XHestoneuro_EnableAutoRestart(XHestoneuro *InstancePtr);
void XHestoneuro_DisableAutoRestart(XHestoneuro *InstancePtr);

void XHestoneuro_Set_pCall(XHestoneuro *InstancePtr, u64 Data);
u64 XHestoneuro_Get_pCall(XHestoneuro *InstancePtr);
void XHestoneuro_Set_pPut(XHestoneuro *InstancePtr, u64 Data);
u64 XHestoneuro_Get_pPut(XHestoneuro *InstancePtr);
void XHestoneuro_Set_expect_r(XHestoneuro *InstancePtr, u32 Data);
u32 XHestoneuro_Get_expect_r(XHestoneuro *InstancePtr);
void XHestoneuro_Set_kappa(XHestoneuro *InstancePtr, u32 Data);
u32 XHestoneuro_Get_kappa(XHestoneuro *InstancePtr);
void XHestoneuro_Set_variance(XHestoneuro *InstancePtr, u32 Data);
u32 XHestoneuro_Get_variance(XHestoneuro *InstancePtr);
void XHestoneuro_Set_correlation(XHestoneuro *InstancePtr, u32 Data);
u32 XHestoneuro_Get_correlation(XHestoneuro *InstancePtr);
void XHestoneuro_Set_timeT(XHestoneuro *InstancePtr, u32 Data);
u32 XHestoneuro_Get_timeT(XHestoneuro *InstancePtr);
void XHestoneuro_Set_freeRate(XHestoneuro *InstancePtr, u32 Data);
u32 XHestoneuro_Get_freeRate(XHestoneuro *InstancePtr);
void XHestoneuro_Set_volatility(XHestoneuro *InstancePtr, u32 Data);
u32 XHestoneuro_Get_volatility(XHestoneuro *InstancePtr);
void XHestoneuro_Set_initPrice(XHestoneuro *InstancePtr, u32 Data);
u32 XHestoneuro_Get_initPrice(XHestoneuro *InstancePtr);
void XHestoneuro_Set_strikePrice(XHestoneuro *InstancePtr, u32 Data);
u32 XHestoneuro_Get_strikePrice(XHestoneuro *InstancePtr);

void XHestoneuro_InterruptGlobalEnable(XHestoneuro *InstancePtr);
void XHestoneuro_InterruptGlobalDisable(XHestoneuro *InstancePtr);
void XHestoneuro_InterruptEnable(XHestoneuro *InstancePtr, u32 Mask);
void XHestoneuro_InterruptDisable(XHestoneuro *InstancePtr, u32 Mask);
void XHestoneuro_InterruptClear(XHestoneuro *InstancePtr, u32 Mask);
u32 XHestoneuro_InterruptGetEnabled(XHestoneuro *InstancePtr);
u32 XHestoneuro_InterruptGetStatus(XHestoneuro *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
