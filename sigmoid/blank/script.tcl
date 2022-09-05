############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sigmoid
set_top d_sigmoid
add_files sigmoid/blank/sigmoid.c
open_solution "blank"
set_part {xc7z020clg400-3}
create_clock -period 10 -name default
#source "./sigmoid/blank/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
