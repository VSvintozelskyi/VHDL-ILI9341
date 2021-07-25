
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name DisplayAdafruit -dir "/mnt/sda2/Documents/FPGA/xilinx/DisplayAdafruit/planAhead_run_5" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/mnt/sda2/Documents/FPGA/xilinx/DisplayAdafruit/top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/mnt/sda2/Documents/FPGA/xilinx/DisplayAdafruit} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "top.ucf" [current_fileset -constrset]
add_files [list {top.ucf}] -fileset [get_property constrset [current_run]]
link_design
