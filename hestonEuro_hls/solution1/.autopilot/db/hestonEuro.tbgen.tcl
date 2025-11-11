set moduleName hestonEuro
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {hestonEuro}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 32 regular {axi_master 1}  }
	{ pCall int 64 regular {axi_slave 0}  }
	{ pPut int 64 regular {axi_slave 0}  }
	{ expect_r float 32 regular {axi_slave 0}  }
	{ kappa float 32 regular {axi_slave 0}  }
	{ variance float 32 regular {axi_slave 0}  }
	{ correlation float 32 regular {axi_slave 0}  }
	{ timeT float 32 regular {axi_slave 0}  }
	{ freeRate float 32 regular {axi_slave 0}  }
	{ volatility float 32 regular {axi_slave 0}  }
	{ initPrice float 32 regular {axi_slave 0}  }
	{ strikePrice float 32 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "pCall","offset": { "type": "dynamic","port_name": "pCall","bundle": "control"},"direction": "WRITEONLY"},{"cName": "pPut","offset": { "type": "dynamic","port_name": "pPut","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "pCall", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "pPut", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "expect_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "kappa", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "variance", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "correlation", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "timeT", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "freeRate", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "volatility", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "initPrice", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "strikePrice", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"hestonEuro","role":"start","value":"0","valid_bit":"0"},{"name":"hestonEuro","role":"continue","value":"0","valid_bit":"4"},{"name":"hestonEuro","role":"auto_start","value":"0","valid_bit":"7"},{"name":"pCall","role":"data","value":"16"},{"name":"pPut","role":"data","value":"28"},{"name":"expect_r","role":"data","value":"40"},{"name":"kappa","role":"data","value":"48"},{"name":"variance","role":"data","value":"56"},{"name":"correlation","role":"data","value":"64"},{"name":"timeT","role":"data","value":"72"},{"name":"freeRate","role":"data","value":"80"},{"name":"volatility","role":"data","value":"88"},{"name":"initPrice","role":"data","value":"96"},{"name":"strikePrice","role":"data","value":"104"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"hestonEuro","role":"start","value":"0","valid_bit":"0"},{"name":"hestonEuro","role":"done","value":"0","valid_bit":"1"},{"name":"hestonEuro","role":"idle","value":"0","valid_bit":"2"},{"name":"hestonEuro","role":"ready","value":"0","valid_bit":"3"},{"name":"hestonEuro","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "60", "61"],
		"CDFG" : "hestonEuro",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4075259", "EstimateLatencyMax" : "4075259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "pCall", "Type" : "None", "Direction" : "I"},
			{"Name" : "pPut", "Type" : "None", "Direction" : "I"},
			{"Name" : "expect_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "kappa", "Type" : "None", "Direction" : "I"},
			{"Name" : "variance", "Type" : "None", "Direction" : "I"},
			{"Name" : "correlation", "Type" : "None", "Direction" : "I"},
			{"Name" : "timeT", "Type" : "None", "Direction" : "I"},
			{"Name" : "freeRate", "Type" : "None", "Direction" : "I"},
			{"Name" : "volatility", "Type" : "None", "Direction" : "I"},
			{"Name" : "initPrice", "Type" : "None", "Direction" : "I"},
			{"Name" : "strikePrice", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_100", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_simulation_fu_206", "Port" : "ref_4oPi_table_100", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "second_order_float_sin_cos_K0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_simulation_fu_206", "Port" : "second_order_float_sin_cos_K0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "second_order_float_sin_cos_K1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_simulation_fu_206", "Port" : "second_order_float_sin_cos_K1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "second_order_float_sin_cos_K2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_simulation_fu_206", "Port" : "second_order_float_sin_cos_K2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "56", "57", "58", "59"],
		"CDFG" : "simulation",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4075188", "EstimateLatencyMax" : "4075188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_data_timeT_val1", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_data_freeRate_val2", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_data_initPrice_val3", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_data_strikePrice_val4", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_vol_expect_val5", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_vol_kappa_val6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_vol_initValue_val7", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_vol_correlation_val8", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_100", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sampleSIM_fu_274", "Port" : "ref_4oPi_table_100", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "second_order_float_sin_cos_K0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sampleSIM_fu_274", "Port" : "second_order_float_sin_cos_K0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "second_order_float_sin_cos_K1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sampleSIM_fu_274", "Port" : "second_order_float_sin_cos_K1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "second_order_float_sin_cos_K2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sampleSIM_fu_274", "Port" : "second_order_float_sin_cos_K2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "loop_seed_init", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.mt_rng_mt_e_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.mt_rng_mt_e_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.mt_rng_mt_e_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.mt_rng_mt_e_3_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.mt_rng_mt_o_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.mt_rng_mt_o_1_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.mt_rng_mt_o_2_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.mt_rng_mt_o_3_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274", "Parent" : "1", "Child" : ["11", "12", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55"],
		"CDFG" : "sampleSIM",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4074561", "EstimateLatencyMax" : "4074561",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_data_timeT_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_data_freeRate_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_data_initPrice_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_data_strikePrice_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_vol_expect_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_vol_kappa_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_vol_initValue_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_vol_correlation_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "mt_rng_mt_e_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_e_0", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "mt_rng_mt_e_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_e_1", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "mt_rng_mt_e_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_e_2", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "mt_rng_mt_e_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_e_3", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "mt_rng_mt_o_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_o_0", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "mt_rng_mt_o_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_o_1", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "mt_rng_mt_o_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_o_2", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "mt_rng_mt_o_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_o_3", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "ref_4oPi_table_100", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "ref_4oPi_table_100", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "second_order_float_sin_cos_K0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "second_order_float_sin_cos_K0", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "second_order_float_sin_cos_K1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "second_order_float_sin_cos_K1", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "second_order_float_sin_cos_K2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "second_order_float_sin_cos_K2", "Inst_start_state" : "35", "Inst_end_state" : "36"}]}],
		"Loop" : [
			{"Name" : "loop_init", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "126", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state18"], "PostState" : ["ap_ST_fsm_state20"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state19_blk"}},
			{"Name" : "loop_sum", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "126", "FirstState" : "ap_ST_fsm_state38", "LastState" : ["ap_ST_fsm_state99"], "QuitState" : ["ap_ST_fsm_state38"], "PreState" : ["ap_ST_fsm_state37"], "PostState" : ["ap_ST_fsm_state35"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_main", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "126", "FirstState" : "ap_ST_fsm_state35", "LastState" : ["ap_ST_fsm_state38"], "QuitState" : ["ap_ST_fsm_state35"], "PreState" : ["ap_ST_fsm_state34"], "PostState" : ["ap_ST_fsm_state100"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_generic_fmax_float_s_fu_2405", "Parent" : "10",
		"CDFG" : "generic_fmax_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Parent" : "10", "Child" : ["13", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42"],
		"CDFG" : "sampleSIM_Pipeline_loop_path_loop_share",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7706", "EstimateLatencyMax" : "7706",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "mt_rng_seed_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "mt_rng_index_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "mt_rng_seed_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "mt_rng_index_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "mt_rng_seed_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "mt_rng_index_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "mt_rng_seed_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "mt_rng_index_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "pVols_0_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Dt", "Type" : "None", "Direction" : "I"},
			{"Name" : "stockPrice_0_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ratio3", "Type" : "None", "Direction" : "I"},
			{"Name" : "this_vol_correlation_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "ratio2", "Type" : "None", "Direction" : "I"},
			{"Name" : "vols_0_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "this_vol_kappa_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "ratio4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "pVols_0_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_0_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vols_0_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pVols_0_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_0_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vols_0_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pVols_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vols_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mt_rng_mt_o_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mt_rng_mt_e_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mt_rng_mt_o_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mt_rng_mt_e_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mt_rng_mt_o_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mt_rng_mt_e_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mt_rng_mt_o_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mt_rng_mt_e_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "vols_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vols_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vols_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pVols_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pVols_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pVols_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vols_1_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vols_2_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vols_3_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_1_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_2_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_3_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pVols_1_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pVols_2_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pVols_3_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vols_1_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vols_2_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vols_3_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_1_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_2_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_3_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pVols_1_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pVols_2_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pVols_3_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vols_1_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vols_2_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vols_3_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_1_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_2_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "stockPrice_3_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pVols_1_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pVols_2_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pVols_3_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out24", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out25", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out26", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out27", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out28", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out29", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out30", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out31", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out32", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out33", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out34", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out35", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out36", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out37", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out38", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out39", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out40", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out41", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out42", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out43", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out44", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out45", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out46", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out47", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out48", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out49", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out50", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out51", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ref_4oPi_table_100", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_sin_or_cos_float_s_fu_2130", "Port" : "ref_4oPi_table_100", "Inst_start_state" : "25", "Inst_end_state" : "30"}]},
			{"Name" : "second_order_float_sin_cos_K0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_sin_or_cos_float_s_fu_2130", "Port" : "second_order_float_sin_cos_K0", "Inst_start_state" : "25", "Inst_end_state" : "30"}]},
			{"Name" : "second_order_float_sin_cos_K1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_sin_or_cos_float_s_fu_2130", "Port" : "second_order_float_sin_cos_K1", "Inst_start_state" : "25", "Inst_end_state" : "30"}]},
			{"Name" : "second_order_float_sin_cos_K2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_sin_or_cos_float_s_fu_2130", "Port" : "second_order_float_sin_cos_K2", "Inst_start_state" : "25", "Inst_end_state" : "30"}]}],
		"Loop" : [
			{"Name" : "loop_path_loop_share", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "30", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage25", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage25_subdone", "QuitState" : "ap_ST_fsm_pp0_stage25", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage25_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130", "Parent" : "12", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "sin_or_cos_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_100", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.ref_4oPi_table_100_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.second_order_float_sin_cos_K0_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.second_order_float_sin_cos_K1_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.second_order_float_sin_cos_K2_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.mul_23s_22ns_45_1_1_U2", "Parent" : "13"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.mul_30s_29ns_58_1_1_U3", "Parent" : "13"},
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.mul_80s_24ns_80_1_1_U4", "Parent" : "13"},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.sparsemux_17_3_1_1_1_U5", "Parent" : "13"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.sparsemux_33_4_1_1_1_U6", "Parent" : "13"},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.sparsemux_33_4_1_1_1_U7", "Parent" : "13"},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.mul_15ns_15ns_30_1_1_U8", "Parent" : "13"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.mul_15ns_15s_30_1_1_U9", "Parent" : "13"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.faddfsub_32ns_32ns_32_4_full_dsp_1_U24", "Parent" : "12"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.faddfsub_32ns_32ns_32_4_full_dsp_1_U25", "Parent" : "12"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.fmul_32ns_32ns_32_3_max_dsp_1_U28", "Parent" : "12"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.uitofp_32ns_32_4_no_dsp_1_U29", "Parent" : "12"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U32", "Parent" : "12"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U33", "Parent" : "12"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U34", "Parent" : "12"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U35", "Parent" : "12"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U36", "Parent" : "12"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U37", "Parent" : "12"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U38", "Parent" : "12"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U39", "Parent" : "12"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U40", "Parent" : "12"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U41", "Parent" : "12"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U42", "Parent" : "12"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U43", "Parent" : "12"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.faddfsub_32ns_32ns_32_4_full_dsp_1_U223", "Parent" : "10"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.fadd_32ns_32ns_32_4_full_dsp_1_U224", "Parent" : "10"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.fmul_32ns_32ns_32_3_max_dsp_1_U225", "Parent" : "10"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.fmul_32ns_32ns_32_3_max_dsp_1_U226", "Parent" : "10"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.fdiv_32ns_32ns_32_9_no_dsp_1_U227", "Parent" : "10"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.fcmp_32ns_32ns_1_2_no_dsp_1_U228", "Parent" : "10"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.fsqrt_32ns_32ns_32_8_no_dsp_1_U229", "Parent" : "10"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.flog_32ns_32ns_32_9_full_dsp_1_U230", "Parent" : "10"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.fexp_32ns_32ns_32_8_full_dsp_1_U231", "Parent" : "10"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.mux_4_2_32_1_1_U232", "Parent" : "10"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.mux_4_2_32_1_1_U233", "Parent" : "10"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.mux_4_2_32_1_1_U234", "Parent" : "10"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.grp_sampleSIM_fu_274.mux_4_2_32_1_1_U235", "Parent" : "10"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.mul_32s_32ns_32_1_1_U261", "Parent" : "1"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.mul_32s_32ns_32_1_1_U262", "Parent" : "1"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.mul_32s_32ns_32_1_1_U263", "Parent" : "1"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_simulation_fu_206.mul_32s_32ns_32_1_1_U264", "Parent" : "1"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hestonEuro {
		gmem {Type O LastRead 4 FirstWrite 2}
		pCall {Type I LastRead 0 FirstWrite -1}
		pPut {Type I LastRead 0 FirstWrite -1}
		expect_r {Type I LastRead 0 FirstWrite -1}
		kappa {Type I LastRead 0 FirstWrite -1}
		variance {Type I LastRead 0 FirstWrite -1}
		correlation {Type I LastRead 0 FirstWrite -1}
		timeT {Type I LastRead 0 FirstWrite -1}
		freeRate {Type I LastRead 0 FirstWrite -1}
		volatility {Type I LastRead 0 FirstWrite -1}
		initPrice {Type I LastRead 0 FirstWrite -1}
		strikePrice {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_100 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}}
	simulation {
		this_data_timeT_val1 {Type I LastRead 0 FirstWrite -1}
		this_data_freeRate_val2 {Type I LastRead 0 FirstWrite -1}
		this_data_initPrice_val3 {Type I LastRead 0 FirstWrite -1}
		this_data_strikePrice_val4 {Type I LastRead 0 FirstWrite -1}
		this_vol_expect_val5 {Type I LastRead 0 FirstWrite -1}
		this_vol_kappa_val6 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		this_vol_initValue_val7 {Type I LastRead 0 FirstWrite -1}
		this_vol_correlation_val8 {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_100 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}}
	sampleSIM {
		this_data_timeT_val {Type I LastRead 12 FirstWrite -1}
		this_data_freeRate_val {Type I LastRead 17 FirstWrite -1}
		this_data_initPrice_val {Type I LastRead 0 FirstWrite -1}
		this_data_strikePrice_val {Type I LastRead 0 FirstWrite -1}
		this_vol_expect_val {Type I LastRead 17 FirstWrite -1}
		this_vol_kappa_val {Type I LastRead 17 FirstWrite -1}
		p_read {Type I LastRead 17 FirstWrite -1}
		this_vol_initValue_val {Type I LastRead 14 FirstWrite -1}
		this_vol_correlation_val {Type I LastRead 17 FirstWrite -1}
		mt_rng_mt_e_0 {Type IO LastRead 2 FirstWrite 2}
		mt_rng_mt_e_1 {Type IO LastRead 2 FirstWrite 2}
		mt_rng_mt_e_2 {Type IO LastRead 2 FirstWrite 2}
		mt_rng_mt_e_3 {Type IO LastRead 2 FirstWrite 2}
		mt_rng_mt_o_0 {Type IO LastRead 2 FirstWrite 2}
		mt_rng_mt_o_1 {Type IO LastRead 2 FirstWrite 2}
		mt_rng_mt_o_2 {Type IO LastRead 2 FirstWrite 2}
		mt_rng_mt_o_3 {Type IO LastRead 2 FirstWrite 2}
		ref_4oPi_table_100 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}}
	generic_fmax_float_s {
		x {Type I LastRead 0 FirstWrite -1}}
	sampleSIM_Pipeline_loop_path_loop_share {
		empty_23 {Type I LastRead 0 FirstWrite -1}
		empty_24 {Type I LastRead 0 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		empty_27 {Type I LastRead 0 FirstWrite -1}
		empty_28 {Type I LastRead 0 FirstWrite -1}
		empty_29 {Type I LastRead 0 FirstWrite -1}
		empty_30 {Type I LastRead 0 FirstWrite -1}
		empty_31 {Type I LastRead 0 FirstWrite -1}
		empty_32 {Type I LastRead 0 FirstWrite -1}
		empty_33 {Type I LastRead 0 FirstWrite -1}
		empty_34 {Type I LastRead 0 FirstWrite -1}
		empty_35 {Type I LastRead 0 FirstWrite -1}
		empty_36 {Type I LastRead 0 FirstWrite -1}
		empty_37 {Type I LastRead 0 FirstWrite -1}
		empty_38 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		empty_43 {Type I LastRead 0 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		empty_45 {Type I LastRead 0 FirstWrite -1}
		empty_46 {Type I LastRead 0 FirstWrite -1}
		empty_47 {Type I LastRead 0 FirstWrite -1}
		empty_48 {Type I LastRead 0 FirstWrite -1}
		empty_49 {Type I LastRead 0 FirstWrite -1}
		empty_50 {Type I LastRead 0 FirstWrite -1}
		empty_51 {Type I LastRead 0 FirstWrite -1}
		empty_52 {Type I LastRead 0 FirstWrite -1}
		empty_53 {Type I LastRead 0 FirstWrite -1}
		empty_54 {Type I LastRead 0 FirstWrite -1}
		empty_55 {Type I LastRead 0 FirstWrite -1}
		empty_56 {Type I LastRead 0 FirstWrite -1}
		empty_57 {Type I LastRead 0 FirstWrite -1}
		empty_58 {Type I LastRead 0 FirstWrite -1}
		empty_59 {Type I LastRead 0 FirstWrite -1}
		empty_60 {Type I LastRead 0 FirstWrite -1}
		empty_61 {Type I LastRead 0 FirstWrite -1}
		empty_62 {Type I LastRead 0 FirstWrite -1}
		empty_63 {Type I LastRead 0 FirstWrite -1}
		empty_64 {Type I LastRead 0 FirstWrite -1}
		empty_65 {Type I LastRead 0 FirstWrite -1}
		empty_66 {Type I LastRead 0 FirstWrite -1}
		empty_67 {Type I LastRead 0 FirstWrite -1}
		empty_68 {Type I LastRead 0 FirstWrite -1}
		empty_69 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		mt_rng_seed_3_0 {Type I LastRead 0 FirstWrite -1}
		mt_rng_index_3_0 {Type I LastRead 0 FirstWrite -1}
		mt_rng_seed_2_0 {Type I LastRead 0 FirstWrite -1}
		mt_rng_index_2_0 {Type I LastRead 0 FirstWrite -1}
		mt_rng_seed_1_0 {Type I LastRead 0 FirstWrite -1}
		mt_rng_index_1_0 {Type I LastRead 0 FirstWrite -1}
		mt_rng_seed_0_0 {Type I LastRead 0 FirstWrite -1}
		mt_rng_index_0_0 {Type I LastRead 0 FirstWrite -1}
		pVols_0_3 {Type O LastRead -1 FirstWrite 55}
		Dt {Type I LastRead 0 FirstWrite -1}
		stockPrice_0_3 {Type O LastRead -1 FirstWrite 55}
		ratio3 {Type I LastRead 0 FirstWrite -1}
		this_vol_correlation_val {Type I LastRead 0 FirstWrite -1}
		ratio2 {Type I LastRead 0 FirstWrite -1}
		vols_0_3 {Type O LastRead -1 FirstWrite 50}
		this_vol_kappa_val {Type I LastRead 0 FirstWrite -1}
		ratio4 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		pVols_0_2 {Type O LastRead -1 FirstWrite 54}
		stockPrice_0_2 {Type O LastRead -1 FirstWrite 54}
		vols_0_2 {Type O LastRead -1 FirstWrite 49}
		pVols_0_1 {Type O LastRead -1 FirstWrite 53}
		stockPrice_0_1 {Type O LastRead -1 FirstWrite 53}
		vols_0_1 {Type O LastRead -1 FirstWrite 48}
		stockPrice_0 {Type O LastRead -1 FirstWrite 52}
		pVols_0 {Type O LastRead -1 FirstWrite 52}
		vols_0 {Type O LastRead -1 FirstWrite 47}
		mt_rng_mt_o_0 {Type IO LastRead 2 FirstWrite 2}
		mt_rng_mt_e_0 {Type IO LastRead 2 FirstWrite 2}
		mt_rng_mt_o_1 {Type IO LastRead 2 FirstWrite 2}
		mt_rng_mt_e_1 {Type IO LastRead 2 FirstWrite 2}
		mt_rng_mt_o_2 {Type IO LastRead 2 FirstWrite 2}
		mt_rng_mt_e_2 {Type IO LastRead 2 FirstWrite 2}
		mt_rng_mt_o_3 {Type IO LastRead 2 FirstWrite 2}
		mt_rng_mt_e_3 {Type IO LastRead 2 FirstWrite 2}
		vols_1 {Type O LastRead -1 FirstWrite 47}
		vols_2 {Type O LastRead -1 FirstWrite 47}
		vols_3 {Type O LastRead -1 FirstWrite 47}
		pVols_1 {Type O LastRead -1 FirstWrite 52}
		pVols_2 {Type O LastRead -1 FirstWrite 52}
		pVols_3 {Type O LastRead -1 FirstWrite 52}
		stockPrice_1 {Type O LastRead -1 FirstWrite 52}
		stockPrice_2 {Type O LastRead -1 FirstWrite 52}
		stockPrice_3 {Type O LastRead -1 FirstWrite 52}
		vols_1_1 {Type O LastRead -1 FirstWrite 48}
		vols_2_1 {Type O LastRead -1 FirstWrite 48}
		vols_3_1 {Type O LastRead -1 FirstWrite 48}
		stockPrice_1_1 {Type O LastRead -1 FirstWrite 53}
		stockPrice_2_1 {Type O LastRead -1 FirstWrite 53}
		stockPrice_3_1 {Type O LastRead -1 FirstWrite 53}
		pVols_1_1 {Type O LastRead -1 FirstWrite 53}
		pVols_2_1 {Type O LastRead -1 FirstWrite 53}
		pVols_3_1 {Type O LastRead -1 FirstWrite 53}
		vols_1_2 {Type O LastRead -1 FirstWrite 49}
		vols_2_2 {Type O LastRead -1 FirstWrite 49}
		vols_3_2 {Type O LastRead -1 FirstWrite 49}
		stockPrice_1_2 {Type O LastRead -1 FirstWrite 54}
		stockPrice_2_2 {Type O LastRead -1 FirstWrite 54}
		stockPrice_3_2 {Type O LastRead -1 FirstWrite 54}
		pVols_1_2 {Type O LastRead -1 FirstWrite 54}
		pVols_2_2 {Type O LastRead -1 FirstWrite 54}
		pVols_3_2 {Type O LastRead -1 FirstWrite 54}
		vols_1_3 {Type O LastRead -1 FirstWrite 50}
		vols_2_3 {Type O LastRead -1 FirstWrite 50}
		vols_3_3 {Type O LastRead -1 FirstWrite 50}
		stockPrice_1_3 {Type O LastRead -1 FirstWrite 55}
		stockPrice_2_3 {Type O LastRead -1 FirstWrite 55}
		stockPrice_3_3 {Type O LastRead -1 FirstWrite 55}
		pVols_1_3 {Type O LastRead -1 FirstWrite 55}
		pVols_2_3 {Type O LastRead -1 FirstWrite 55}
		pVols_3_3 {Type O LastRead -1 FirstWrite 55}
		p_out {Type O LastRead -1 FirstWrite 25}
		p_out1 {Type O LastRead -1 FirstWrite 25}
		p_out2 {Type O LastRead -1 FirstWrite 25}
		p_out3 {Type O LastRead -1 FirstWrite 25}
		p_out4 {Type O LastRead -1 FirstWrite 25}
		p_out5 {Type O LastRead -1 FirstWrite 25}
		p_out6 {Type O LastRead -1 FirstWrite 25}
		p_out7 {Type O LastRead -1 FirstWrite 25}
		p_out8 {Type O LastRead -1 FirstWrite 25}
		p_out9 {Type O LastRead -1 FirstWrite 25}
		p_out10 {Type O LastRead -1 FirstWrite 25}
		p_out11 {Type O LastRead -1 FirstWrite 25}
		p_out12 {Type O LastRead -1 FirstWrite 25}
		p_out13 {Type O LastRead -1 FirstWrite 25}
		p_out14 {Type O LastRead -1 FirstWrite 25}
		p_out15 {Type O LastRead -1 FirstWrite 25}
		p_out16 {Type O LastRead -1 FirstWrite 25}
		p_out17 {Type O LastRead -1 FirstWrite 25}
		p_out18 {Type O LastRead -1 FirstWrite 25}
		p_out19 {Type O LastRead -1 FirstWrite 25}
		p_out20 {Type O LastRead -1 FirstWrite 25}
		p_out21 {Type O LastRead -1 FirstWrite 25}
		p_out22 {Type O LastRead -1 FirstWrite 25}
		p_out23 {Type O LastRead -1 FirstWrite 25}
		p_out24 {Type O LastRead -1 FirstWrite 25}
		p_out25 {Type O LastRead -1 FirstWrite 25}
		p_out26 {Type O LastRead -1 FirstWrite 25}
		p_out27 {Type O LastRead -1 FirstWrite 25}
		p_out28 {Type O LastRead -1 FirstWrite 25}
		p_out29 {Type O LastRead -1 FirstWrite 25}
		p_out30 {Type O LastRead -1 FirstWrite 25}
		p_out31 {Type O LastRead -1 FirstWrite 25}
		p_out32 {Type O LastRead -1 FirstWrite 25}
		p_out33 {Type O LastRead -1 FirstWrite 25}
		p_out34 {Type O LastRead -1 FirstWrite 25}
		p_out35 {Type O LastRead -1 FirstWrite 25}
		p_out36 {Type O LastRead -1 FirstWrite 25}
		p_out37 {Type O LastRead -1 FirstWrite 25}
		p_out38 {Type O LastRead -1 FirstWrite 25}
		p_out39 {Type O LastRead -1 FirstWrite 25}
		p_out40 {Type O LastRead -1 FirstWrite 25}
		p_out41 {Type O LastRead -1 FirstWrite 25}
		p_out42 {Type O LastRead -1 FirstWrite 25}
		p_out43 {Type O LastRead -1 FirstWrite 25}
		p_out44 {Type O LastRead -1 FirstWrite 25}
		p_out45 {Type O LastRead -1 FirstWrite 25}
		p_out46 {Type O LastRead -1 FirstWrite 25}
		p_out47 {Type O LastRead -1 FirstWrite 25}
		x_8_out {Type O LastRead -1 FirstWrite 25}
		p_out48 {Type O LastRead -1 FirstWrite 25}
		x_6_out {Type O LastRead -1 FirstWrite 25}
		p_out49 {Type O LastRead -1 FirstWrite 25}
		x_4_out {Type O LastRead -1 FirstWrite 25}
		p_out50 {Type O LastRead -1 FirstWrite 25}
		x_out {Type O LastRead -1 FirstWrite 25}
		p_out51 {Type O LastRead -1 FirstWrite 25}
		ref_4oPi_table_100 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_float_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_100 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4075259", "Max" : "4075259"}
	, {"Name" : "Interval", "Min" : "4075260", "Max" : "4075260"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
