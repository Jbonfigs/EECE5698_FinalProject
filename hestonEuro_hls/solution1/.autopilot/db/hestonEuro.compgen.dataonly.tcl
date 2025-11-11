# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
pCall { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
pPut { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
expect_r { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
kappa { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
variance { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
correlation { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
timeT { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
freeRate { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
volatility { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
initPrice { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
strikePrice { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


