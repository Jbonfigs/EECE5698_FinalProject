// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xhestoneuro.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHestoneuro_CfgInitialize(XHestoneuro *InstancePtr, XHestoneuro_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHestoneuro_Start(XHestoneuro *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_AP_CTRL) & 0x80;
    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHestoneuro_IsDone(XHestoneuro *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHestoneuro_IsIdle(XHestoneuro *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHestoneuro_IsReady(XHestoneuro *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHestoneuro_EnableAutoRestart(XHestoneuro *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XHestoneuro_DisableAutoRestart(XHestoneuro *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_AP_CTRL, 0);
}

void XHestoneuro_Set_pCall(XHestoneuro *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_PCALL_DATA, (u32)(Data));
    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_PCALL_DATA + 4, (u32)(Data >> 32));
}

u64 XHestoneuro_Get_pCall(XHestoneuro *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_PCALL_DATA);
    Data += (u64)XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_PCALL_DATA + 4) << 32;
    return Data;
}

void XHestoneuro_Set_pPut(XHestoneuro *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_PPUT_DATA, (u32)(Data));
    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_PPUT_DATA + 4, (u32)(Data >> 32));
}

u64 XHestoneuro_Get_pPut(XHestoneuro *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_PPUT_DATA);
    Data += (u64)XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_PPUT_DATA + 4) << 32;
    return Data;
}

void XHestoneuro_Set_expect_r(XHestoneuro *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_EXPECT_R_DATA, Data);
}

u32 XHestoneuro_Get_expect_r(XHestoneuro *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_EXPECT_R_DATA);
    return Data;
}

void XHestoneuro_Set_kappa(XHestoneuro *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_KAPPA_DATA, Data);
}

u32 XHestoneuro_Get_kappa(XHestoneuro *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_KAPPA_DATA);
    return Data;
}

void XHestoneuro_Set_variance(XHestoneuro *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_VARIANCE_DATA, Data);
}

u32 XHestoneuro_Get_variance(XHestoneuro *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_VARIANCE_DATA);
    return Data;
}

void XHestoneuro_Set_correlation(XHestoneuro *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_CORRELATION_DATA, Data);
}

u32 XHestoneuro_Get_correlation(XHestoneuro *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_CORRELATION_DATA);
    return Data;
}

void XHestoneuro_Set_timeT(XHestoneuro *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_TIMET_DATA, Data);
}

u32 XHestoneuro_Get_timeT(XHestoneuro *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_TIMET_DATA);
    return Data;
}

void XHestoneuro_Set_freeRate(XHestoneuro *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_FREERATE_DATA, Data);
}

u32 XHestoneuro_Get_freeRate(XHestoneuro *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_FREERATE_DATA);
    return Data;
}

void XHestoneuro_Set_volatility(XHestoneuro *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_VOLATILITY_DATA, Data);
}

u32 XHestoneuro_Get_volatility(XHestoneuro *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_VOLATILITY_DATA);
    return Data;
}

void XHestoneuro_Set_initPrice(XHestoneuro *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_INITPRICE_DATA, Data);
}

u32 XHestoneuro_Get_initPrice(XHestoneuro *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_INITPRICE_DATA);
    return Data;
}

void XHestoneuro_Set_strikePrice(XHestoneuro *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_STRIKEPRICE_DATA, Data);
}

u32 XHestoneuro_Get_strikePrice(XHestoneuro *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_STRIKEPRICE_DATA);
    return Data;
}

void XHestoneuro_InterruptGlobalEnable(XHestoneuro *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_GIE, 1);
}

void XHestoneuro_InterruptGlobalDisable(XHestoneuro *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_GIE, 0);
}

void XHestoneuro_InterruptEnable(XHestoneuro *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_IER);
    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_IER, Register | Mask);
}

void XHestoneuro_InterruptDisable(XHestoneuro *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_IER);
    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_IER, Register & (~Mask));
}

void XHestoneuro_InterruptClear(XHestoneuro *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHestoneuro_WriteReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_ISR, Mask);
}

u32 XHestoneuro_InterruptGetEnabled(XHestoneuro *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_IER);
}

u32 XHestoneuro_InterruptGetStatus(XHestoneuro *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHestoneuro_ReadReg(InstancePtr->Control_BaseAddress, XHESTONEURO_CONTROL_ADDR_ISR);
}

