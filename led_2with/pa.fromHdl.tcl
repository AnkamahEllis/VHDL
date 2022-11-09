
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name led_2with -dir "C:/Users/AB3/OneDrive/Documents/led_2with/planAhead_run_1" -part xc3s200ft256-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "led_2with.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {led_2with.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top led_2with $srcset
add_files [list {led_2with.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s200ft256-4
