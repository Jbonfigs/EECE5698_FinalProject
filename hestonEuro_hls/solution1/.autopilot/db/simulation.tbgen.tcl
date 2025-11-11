set moduleName simulation
set isTopModule 0
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
set C_modelName {simulation}
set C_modelType { int 64 }
set C_modelArgList {
	{ this_data_timeT_val1 float 32 regular  }
	{ this_data_freeRate_val2 float 32 regular  }
	{ this_data_initPrice_val3 float 32 regular  }
	{ this_data_strikePrice_val4 float 32 regular  }
	{ this_vol_expect_val5 float 32 regular  }
	{ this_vol_kappa_val6 float 32 regular  }
	{ p_read float 32 regular  }
	{ this_vol_initValue_val7 float 32 regular  }
	{ this_vol_correlation_val8 float 32 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "this_data_timeT_val1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_data_freeRate_val2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_data_initPrice_val3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_data_strikePrice_val4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_vol_expect_val5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_vol_kappa_val6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_vol_initValue_val7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_vol_correlation_val8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_data_timeT_val1 sc_in sc_lv 32 signal 0 } 
	{ this_data_freeRate_val2 sc_in sc_lv 32 signal 1 } 
	{ this_data_initPrice_val3 sc_in sc_lv 32 signal 2 } 
	{ this_data_strikePrice_val4 sc_in sc_lv 32 signal 3 } 
	{ this_vol_expect_val5 sc_in sc_lv 32 signal 4 } 
	{ this_vol_kappa_val6 sc_in sc_lv 32 signal 5 } 
	{ p_read sc_in sc_lv 32 signal 6 } 
	{ this_vol_initValue_val7 sc_in sc_lv 32 signal 7 } 
	{ this_vol_correlation_val8 sc_in sc_lv 32 signal 8 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_data_timeT_val1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_data_timeT_val1", "role": "default" }} , 
 	{ "name": "this_data_freeRate_val2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_data_freeRate_val2", "role": "default" }} , 
 	{ "name": "this_data_initPrice_val3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_data_initPrice_val3", "role": "default" }} , 
 	{ "name": "this_data_strikePrice_val4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_data_strikePrice_val4", "role": "default" }} , 
 	{ "name": "this_vol_expect_val5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_vol_expect_val5", "role": "default" }} , 
 	{ "name": "this_vol_kappa_val6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_vol_kappa_val6", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "this_vol_initValue_val7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_vol_initValue_val7", "role": "default" }} , 
 	{ "name": "this_vol_correlation_val8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_vol_correlation_val8", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "55", "56", "57", "58"],
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
					{"ID" : "9", "SubInstance" : "grp_sampleSIM_fu_274", "Port" : "ref_4oPi_table_100", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "second_order_float_sin_cos_K0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_sampleSIM_fu_274", "Port" : "second_order_float_sin_cos_K0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "second_order_float_sin_cos_K1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_sampleSIM_fu_274", "Port" : "second_order_float_sin_cos_K1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "second_order_float_sin_cos_K2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_sampleSIM_fu_274", "Port" : "second_order_float_sin_cos_K2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "loop_seed_init", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mt_rng_mt_e_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mt_rng_mt_e_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mt_rng_mt_e_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mt_rng_mt_e_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mt_rng_mt_o_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mt_rng_mt_o_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mt_rng_mt_o_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mt_rng_mt_o_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274", "Parent" : "0", "Child" : ["10", "11", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54"],
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
					{"ID" : "11", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_e_0", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "mt_rng_mt_e_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_e_1", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "mt_rng_mt_e_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_e_2", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "mt_rng_mt_e_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_e_3", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "mt_rng_mt_o_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_o_0", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "mt_rng_mt_o_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_o_1", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "mt_rng_mt_o_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_o_2", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "mt_rng_mt_o_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "mt_rng_mt_o_3", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "ref_4oPi_table_100", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "ref_4oPi_table_100", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "second_order_float_sin_cos_K0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "second_order_float_sin_cos_K0", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "second_order_float_sin_cos_K1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "second_order_float_sin_cos_K1", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "second_order_float_sin_cos_K2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Port" : "second_order_float_sin_cos_K2", "Inst_start_state" : "35", "Inst_end_state" : "36"}]}],
		"Loop" : [
			{"Name" : "loop_init", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "126", "FirstState" : "ap_ST_fsm_state19", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state19"], "PreState" : ["ap_ST_fsm_state18"], "PostState" : ["ap_ST_fsm_state20"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state19_blk"}},
			{"Name" : "loop_sum", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "126", "FirstState" : "ap_ST_fsm_state38", "LastState" : ["ap_ST_fsm_state99"], "QuitState" : ["ap_ST_fsm_state38"], "PreState" : ["ap_ST_fsm_state37"], "PostState" : ["ap_ST_fsm_state35"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_main", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "126", "FirstState" : "ap_ST_fsm_state35", "LastState" : ["ap_ST_fsm_state38"], "QuitState" : ["ap_ST_fsm_state35"], "PreState" : ["ap_ST_fsm_state34"], "PostState" : ["ap_ST_fsm_state100"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_generic_fmax_float_s_fu_2405", "Parent" : "9",
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411", "Parent" : "9", "Child" : ["12", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41"],
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
					{"ID" : "12", "SubInstance" : "grp_sin_or_cos_float_s_fu_2130", "Port" : "ref_4oPi_table_100", "Inst_start_state" : "25", "Inst_end_state" : "30"}]},
			{"Name" : "second_order_float_sin_cos_K0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sin_or_cos_float_s_fu_2130", "Port" : "second_order_float_sin_cos_K0", "Inst_start_state" : "25", "Inst_end_state" : "30"}]},
			{"Name" : "second_order_float_sin_cos_K1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sin_or_cos_float_s_fu_2130", "Port" : "second_order_float_sin_cos_K1", "Inst_start_state" : "25", "Inst_end_state" : "30"}]},
			{"Name" : "second_order_float_sin_cos_K2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sin_or_cos_float_s_fu_2130", "Port" : "second_order_float_sin_cos_K2", "Inst_start_state" : "25", "Inst_end_state" : "30"}]}],
		"Loop" : [
			{"Name" : "loop_path_loop_share", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "30", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage25", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage25_subdone", "QuitState" : "ap_ST_fsm_pp0_stage25", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage25_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130", "Parent" : "11", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.ref_4oPi_table_100_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.second_order_float_sin_cos_K0_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.second_order_float_sin_cos_K1_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.second_order_float_sin_cos_K2_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.mul_23s_22ns_45_1_1_U2", "Parent" : "12"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.mul_30s_29ns_58_1_1_U3", "Parent" : "12"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.mul_80s_24ns_80_1_1_U4", "Parent" : "12"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.sparsemux_17_3_1_1_1_U5", "Parent" : "12"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.sparsemux_33_4_1_1_1_U6", "Parent" : "12"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.sparsemux_33_4_1_1_1_U7", "Parent" : "12"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.mul_15ns_15ns_30_1_1_U8", "Parent" : "12"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.grp_sin_or_cos_float_s_fu_2130.mul_15ns_15s_30_1_1_U9", "Parent" : "12"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.faddfsub_32ns_32ns_32_4_full_dsp_1_U24", "Parent" : "11"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.faddfsub_32ns_32ns_32_4_full_dsp_1_U25", "Parent" : "11"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.fmul_32ns_32ns_32_3_max_dsp_1_U28", "Parent" : "11"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.uitofp_32ns_32_4_no_dsp_1_U29", "Parent" : "11"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U32", "Parent" : "11"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U33", "Parent" : "11"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U34", "Parent" : "11"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U35", "Parent" : "11"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U36", "Parent" : "11"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U37", "Parent" : "11"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U38", "Parent" : "11"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U39", "Parent" : "11"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U40", "Parent" : "11"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U41", "Parent" : "11"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U42", "Parent" : "11"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.mux_4_2_32_1_1_U43", "Parent" : "11"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.faddfsub_32ns_32ns_32_4_full_dsp_1_U223", "Parent" : "9"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.fadd_32ns_32ns_32_4_full_dsp_1_U224", "Parent" : "9"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.fmul_32ns_32ns_32_3_max_dsp_1_U225", "Parent" : "9"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.fmul_32ns_32ns_32_3_max_dsp_1_U226", "Parent" : "9"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.fdiv_32ns_32ns_32_9_no_dsp_1_U227", "Parent" : "9"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.fcmp_32ns_32ns_1_2_no_dsp_1_U228", "Parent" : "9"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.fsqrt_32ns_32ns_32_8_no_dsp_1_U229", "Parent" : "9"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.flog_32ns_32ns_32_9_full_dsp_1_U230", "Parent" : "9"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.fexp_32ns_32ns_32_8_full_dsp_1_U231", "Parent" : "9"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.mux_4_2_32_1_1_U232", "Parent" : "9"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.mux_4_2_32_1_1_U233", "Parent" : "9"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.mux_4_2_32_1_1_U234", "Parent" : "9"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sampleSIM_fu_274.mux_4_2_32_1_1_U235", "Parent" : "9"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32ns_32_1_1_U261", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32ns_32_1_1_U262", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32ns_32_1_1_U263", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32ns_32_1_1_U264", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "4075188", "Max" : "4075188"}
	, {"Name" : "Interval", "Min" : "4075188", "Max" : "4075188"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_data_timeT_val1 { ap_none {  { this_data_timeT_val1 in_data 0 32 } } }
	this_data_freeRate_val2 { ap_none {  { this_data_freeRate_val2 in_data 0 32 } } }
	this_data_initPrice_val3 { ap_none {  { this_data_initPrice_val3 in_data 0 32 } } }
	this_data_strikePrice_val4 { ap_none {  { this_data_strikePrice_val4 in_data 0 32 } } }
	this_vol_expect_val5 { ap_none {  { this_vol_expect_val5 in_data 0 32 } } }
	this_vol_kappa_val6 { ap_none {  { this_vol_kappa_val6 in_data 0 32 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
	this_vol_initValue_val7 { ap_none {  { this_vol_initValue_val7 in_data 0 32 } } }
	this_vol_correlation_val8 { ap_none {  { this_vol_correlation_val8 in_data 0 32 } } }
}
