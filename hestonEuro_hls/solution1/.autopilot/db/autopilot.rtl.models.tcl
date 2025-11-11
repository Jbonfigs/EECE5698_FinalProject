set SynModuleInfo {
  {SRCNAME generic_fmax<float> MODELNAME generic_fmax_float_s RTLNAME hestonEuro_generic_fmax_float_s}
  {SRCNAME sin_or_cos<float> MODELNAME sin_or_cos_float_s RTLNAME hestonEuro_sin_or_cos_float_s
    SUBMODULES {
      {MODELNAME hestonEuro_mul_23s_22ns_45_1_1 RTLNAME hestonEuro_mul_23s_22ns_45_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_mul_30s_29ns_58_1_1 RTLNAME hestonEuro_mul_30s_29ns_58_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_mul_80s_24ns_80_1_1 RTLNAME hestonEuro_mul_80s_24ns_80_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_sparsemux_17_3_1_1_1 RTLNAME hestonEuro_sparsemux_17_3_1_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME hestonEuro_sparsemux_33_4_1_1_1 RTLNAME hestonEuro_sparsemux_33_4_1_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME hestonEuro_mul_15ns_15ns_30_1_1 RTLNAME hestonEuro_mul_15ns_15ns_30_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_mul_15ns_15s_30_1_1 RTLNAME hestonEuro_mul_15ns_15s_30_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_sin_or_cos_float_s_ref_4oPi_table_100_ROM_1P_LUTRAM_1R RTLNAME hestonEuro_sin_or_cos_float_s_ref_4oPi_table_100_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_sin_or_cos_float_s_second_order_float_sin_cos_K0_ROM_1P_LUTRAM_1R RTLNAME hestonEuro_sin_or_cos_float_s_second_order_float_sin_cos_K0_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_sin_or_cos_float_s_second_order_float_sin_cos_K1_ROM_1P_LUTRAM_1R RTLNAME hestonEuro_sin_or_cos_float_s_second_order_float_sin_cos_K1_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_sin_or_cos_float_s_second_order_float_sin_cos_K2_ROM_1P_LUTRAM_1R RTLNAME hestonEuro_sin_or_cos_float_s_second_order_float_sin_cos_K2_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sampleSIM_Pipeline_loop_path_loop_share MODELNAME sampleSIM_Pipeline_loop_path_loop_share RTLNAME hestonEuro_sampleSIM_Pipeline_loop_path_loop_share
    SUBMODULES {
      {MODELNAME hestonEuro_faddfsub_32ns_32ns_32_4_full_dsp_1 RTLNAME hestonEuro_faddfsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME hestonEuro_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_uitofp_32ns_32_4_no_dsp_1 RTLNAME hestonEuro_uitofp_32ns_32_4_no_dsp_1 BINDTYPE op TYPE uitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_mux_4_2_32_1_1 RTLNAME hestonEuro_mux_4_2_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_flow_control_loop_pipe_sequential_init RTLNAME hestonEuro_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME hestonEuro_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sampleSIM MODELNAME sampleSIM RTLNAME hestonEuro_sampleSIM
    SUBMODULES {
      {MODELNAME hestonEuro_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME hestonEuro_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_fdiv_32ns_32ns_32_9_no_dsp_1 RTLNAME hestonEuro_fdiv_32ns_32ns_32_9_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME hestonEuro_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_fsqrt_32ns_32ns_32_8_no_dsp_1 RTLNAME hestonEuro_fsqrt_32ns_32ns_32_8_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_flog_32ns_32ns_32_9_full_dsp_1 RTLNAME hestonEuro_flog_32ns_32ns_32_9_full_dsp_1 BINDTYPE op TYPE flog IMPL fulldsp LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_fexp_32ns_32ns_32_8_full_dsp_1 RTLNAME hestonEuro_fexp_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fexp IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME simulation MODELNAME simulation RTLNAME hestonEuro_simulation
    SUBMODULES {
      {MODELNAME hestonEuro_mul_32s_32ns_32_1_1 RTLNAME hestonEuro_mul_32s_32ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hestonEuro_simulation_mt_rng_mt_e_RAM_1WNR_AUTO_1R1W RTLNAME hestonEuro_simulation_mt_rng_mt_e_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME hestonEuro MODELNAME hestonEuro RTLNAME hestonEuro IS_TOP 1
    SUBMODULES {
      {MODELNAME hestonEuro_gmem_m_axi RTLNAME hestonEuro_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME hestonEuro_control_s_axi RTLNAME hestonEuro_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
