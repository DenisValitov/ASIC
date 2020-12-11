## Setup technology files
include ../Source/Technology/X-FAB_max.tcl
## Setup variables
set DESIGN filter
set PARAMS {}
## Read in Verilog HDL files
# Top module
read_hdl -v2001 ../Source/filter.v
## Compile our code (create a technology-independent schematic)
elaborate -parameters $PARAMS $DESIGN
## Setup design constraints
read_sdc ../Source/filter.sdc
## Synthesize our schematic (create a technology-dependent schematic)
#synthesize -to_generic
synthesize -to_mapped
synthesize -incremental
## Write out area and timing reports
report area > ../Reports/Top_synth_area_report_max
report timing > ../Reports/Top_synth_timing_report_max
## Write out synthesized Verilog netlist
write_hdl -mapped > ../Source/Synthesis/filter_synth_max.v
## Write out the SDC file we will take into the place n route tool
write_sdc > ../Synthesis/Top_out_max.sdc

gui_show
