############################################################
## Heston European Option Pricing - HLS TCL Script
## Target: Xilinx Zynq UltraScale+ ZCU102
## Description: Synthesizes Heston model option pricing
############################################################

# Set project name and top-level function
set project_name "hestonEuro_hls"
set top_function "hestonEuro"
set solution_name "solution1"
set device_part "xczu9eg-ffvb1156-2-e"

# Create new project
open_project -reset $project_name

# Add source files
add_files hestonEuro.cpp -cflags "-I./common"
add_files common/RNG.cpp -cflags "-I./common"
add_files common/stockData.cpp -cflags "-I./common"
add_files common/volatilityData.cpp -cflags "-I./common"

# Add testbench file
add_files -tb hestonEuro_tb.cpp -cflags "-I./common"

# Set top-level function
set_top $top_function

# Create solution
open_solution -reset $solution_name

# Set target device (Zynq UltraScale+ ZCU102)
set_part $device_part

# Create clock constraint (100 MHz = 10ns period)
create_clock -period 10 -name default

# Set clock uncertainty (typical for Zynq US+)
config_interface -m_axi_latency 64
config_interface -m_axi_addr64
config_compile -pipeline_loops 0

# Configuration options for better performance
config_rtl -reset all
config_rtl -reset_level high
config_schedule -enable_dsp_full_reg

############################################################
## C Simulation
############################################################
puts "================================================"
puts "Running C Simulation..."
puts "================================================"
csim_design -clean

############################################################
## C Synthesis
############################################################
puts "================================================"
puts "Running C Synthesis..."
puts "================================================"
csynth_design

############################################################
## C/RTL Co-simulation
############################################################
puts "================================================"
puts "Running C/RTL Co-simulation..."
puts "================================================"
cosim_design -trace_level all -rtl verilog

############################################################
## Export RTL
############################################################
puts "================================================"
puts "Exporting RTL Design..."
puts "================================================"
export_design -rtl verilog -format ip_catalog -output ./export_ip

############################################################
## Generate Reports
############################################################
puts "================================================"
puts "Generating Reports..."
puts "================================================"

# Print resource utilization
puts "\n--- Resource Utilization ---"
puts "Check the generated report: $project_name/$solution_name/syn/report/${top_function}_csynth.rpt"

# Print timing information
puts "\n--- Timing Information ---"
puts "Check the generated report: $project_name/$solution_name/syn/report/${top_function}_csynth.rpt"

puts "================================================"
puts "HLS Flow Complete!"
puts "================================================"
puts "Results available in: $project_name/$solution_name/"
puts "================================================"

exit