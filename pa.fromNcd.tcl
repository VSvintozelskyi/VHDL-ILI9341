
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name DisplayAdafruit -dir "/mnt/sda2/Documents/FPGA/xilinx/DisplayAdafruit/planAhead_run_4" -part xc3s100ecp132-4
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/mnt/sda2/Documents/FPGA/xilinx/DisplayAdafruit/top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/mnt/sda2/Documents/FPGA/xilinx/DisplayAdafruit} }
set_property target_constrs_file "top.ucf" [current_fileset -constrset]
add_files [list {top.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "/mnt/sda2/Documents/FPGA/xilinx/DisplayAdafruit/top.ncd"
if {[catch {read_twx -name results_1 -file "/mnt/sda2/Documents/FPGA/xilinx/DisplayAdafruit/top.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/mnt/sda2/Documents/FPGA/xilinx/DisplayAdafruit/top.twx\": $eInfo"
}
