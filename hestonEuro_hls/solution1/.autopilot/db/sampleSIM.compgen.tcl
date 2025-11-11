# This script segment is generated automatically by AutoPilot

set name hestonEuro_fadd_32ns_32ns_32_4_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name hestonEuro_fmul_32ns_32ns_32_3_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 2 ALLOW_PRAGMA 1
}


set name hestonEuro_fmul_32ns_32ns_32_3_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 2 ALLOW_PRAGMA 1
}


set name hestonEuro_fdiv_32ns_32ns_32_9_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fdiv} IMPL {fabric} LATENCY 8 ALLOW_PRAGMA 1
}


set name hestonEuro_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name hestonEuro_fsqrt_32ns_32ns_32_8_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fsqrt} IMPL {fabric} LATENCY 7 ALLOW_PRAGMA 1
}


set name hestonEuro_flog_32ns_32ns_32_9_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {flog} IMPL {fulldsp} LATENCY 8 ALLOW_PRAGMA 1
}


set name hestonEuro_fexp_32ns_32ns_32_8_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fexp} IMPL {fulldsp} LATENCY 7 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 253 \
    name mt_rng_mt_e_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mt_rng_mt_e_0 \
    op interface \
    ports { mt_rng_mt_e_0_address0 { O 9 vector } mt_rng_mt_e_0_ce0 { O 1 bit } mt_rng_mt_e_0_we0 { O 1 bit } mt_rng_mt_e_0_d0 { O 32 vector } mt_rng_mt_e_0_q0 { I 32 vector } mt_rng_mt_e_0_address1 { O 9 vector } mt_rng_mt_e_0_ce1 { O 1 bit } mt_rng_mt_e_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mt_rng_mt_e_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 254 \
    name mt_rng_mt_e_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mt_rng_mt_e_1 \
    op interface \
    ports { mt_rng_mt_e_1_address0 { O 9 vector } mt_rng_mt_e_1_ce0 { O 1 bit } mt_rng_mt_e_1_we0 { O 1 bit } mt_rng_mt_e_1_d0 { O 32 vector } mt_rng_mt_e_1_q0 { I 32 vector } mt_rng_mt_e_1_address1 { O 9 vector } mt_rng_mt_e_1_ce1 { O 1 bit } mt_rng_mt_e_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mt_rng_mt_e_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 255 \
    name mt_rng_mt_e_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mt_rng_mt_e_2 \
    op interface \
    ports { mt_rng_mt_e_2_address0 { O 9 vector } mt_rng_mt_e_2_ce0 { O 1 bit } mt_rng_mt_e_2_we0 { O 1 bit } mt_rng_mt_e_2_d0 { O 32 vector } mt_rng_mt_e_2_q0 { I 32 vector } mt_rng_mt_e_2_address1 { O 9 vector } mt_rng_mt_e_2_ce1 { O 1 bit } mt_rng_mt_e_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mt_rng_mt_e_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 256 \
    name mt_rng_mt_e_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mt_rng_mt_e_3 \
    op interface \
    ports { mt_rng_mt_e_3_address0 { O 9 vector } mt_rng_mt_e_3_ce0 { O 1 bit } mt_rng_mt_e_3_we0 { O 1 bit } mt_rng_mt_e_3_d0 { O 32 vector } mt_rng_mt_e_3_q0 { I 32 vector } mt_rng_mt_e_3_address1 { O 9 vector } mt_rng_mt_e_3_ce1 { O 1 bit } mt_rng_mt_e_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mt_rng_mt_e_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 257 \
    name mt_rng_mt_o_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mt_rng_mt_o_0 \
    op interface \
    ports { mt_rng_mt_o_0_address0 { O 9 vector } mt_rng_mt_o_0_ce0 { O 1 bit } mt_rng_mt_o_0_we0 { O 1 bit } mt_rng_mt_o_0_d0 { O 32 vector } mt_rng_mt_o_0_q0 { I 32 vector } mt_rng_mt_o_0_address1 { O 9 vector } mt_rng_mt_o_0_ce1 { O 1 bit } mt_rng_mt_o_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mt_rng_mt_o_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 258 \
    name mt_rng_mt_o_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mt_rng_mt_o_1 \
    op interface \
    ports { mt_rng_mt_o_1_address0 { O 9 vector } mt_rng_mt_o_1_ce0 { O 1 bit } mt_rng_mt_o_1_we0 { O 1 bit } mt_rng_mt_o_1_d0 { O 32 vector } mt_rng_mt_o_1_q0 { I 32 vector } mt_rng_mt_o_1_address1 { O 9 vector } mt_rng_mt_o_1_ce1 { O 1 bit } mt_rng_mt_o_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mt_rng_mt_o_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 259 \
    name mt_rng_mt_o_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mt_rng_mt_o_2 \
    op interface \
    ports { mt_rng_mt_o_2_address0 { O 9 vector } mt_rng_mt_o_2_ce0 { O 1 bit } mt_rng_mt_o_2_we0 { O 1 bit } mt_rng_mt_o_2_d0 { O 32 vector } mt_rng_mt_o_2_q0 { I 32 vector } mt_rng_mt_o_2_address1 { O 9 vector } mt_rng_mt_o_2_ce1 { O 1 bit } mt_rng_mt_o_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mt_rng_mt_o_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 260 \
    name mt_rng_mt_o_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mt_rng_mt_o_3 \
    op interface \
    ports { mt_rng_mt_o_3_address0 { O 9 vector } mt_rng_mt_o_3_ce0 { O 1 bit } mt_rng_mt_o_3_we0 { O 1 bit } mt_rng_mt_o_3_d0 { O 32 vector } mt_rng_mt_o_3_q0 { I 32 vector } mt_rng_mt_o_3_address1 { O 9 vector } mt_rng_mt_o_3_ce1 { O 1 bit } mt_rng_mt_o_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mt_rng_mt_o_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name this_data_timeT_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_data_timeT_val \
    op interface \
    ports { this_data_timeT_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name this_data_freeRate_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_data_freeRate_val \
    op interface \
    ports { this_data_freeRate_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name this_data_initPrice_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_data_initPrice_val \
    op interface \
    ports { this_data_initPrice_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name this_data_strikePrice_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_data_strikePrice_val \
    op interface \
    ports { this_data_strikePrice_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name this_vol_expect_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_vol_expect_val \
    op interface \
    ports { this_vol_expect_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name this_vol_kappa_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_vol_kappa_val \
    op interface \
    ports { this_vol_kappa_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name this_vol_initValue_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_vol_initValue_val \
    op interface \
    ports { this_vol_initValue_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name this_vol_correlation_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_vol_correlation_val \
    op interface \
    ports { this_vol_correlation_val { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


