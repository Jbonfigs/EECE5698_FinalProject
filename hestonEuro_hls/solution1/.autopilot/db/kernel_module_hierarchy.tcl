set ModuleHierarchy {[{
"Name" : "hestonEuro","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_simulation_fu_206","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_sampleSIM_fu_274","ID" : "2","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_generic_fmax_float_s_fu_2405","ID" : "3","Type" : "pipeline"},],
			"SubLoops" : [
			{"Name" : "loop_init","ID" : "4","Type" : "no"},
			{"Name" : "loop_main","ID" : "5","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_sampleSIM_Pipeline_loop_path_loop_share_fu_2411","ID" : "6","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "loop_path_loop_share","ID" : "7","Type" : "pipeline",
					"SubInsts" : [
					{"Name" : "grp_sin_or_cos_float_s_fu_2130","ID" : "8","Type" : "pipeline"},
					{"Name" : "generic_fmax_float_s","ID" : "9","Type" : "pipeline"},]},]},],
			"SubLoops" : [
			{"Name" : "loop_sum","ID" : "10","Type" : "no"},]},]},],
		"SubLoops" : [
		{"Name" : "loop_seed_init","ID" : "11","Type" : "no"},]},]
}]}