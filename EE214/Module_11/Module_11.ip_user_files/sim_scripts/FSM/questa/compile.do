vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_12

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 questa_lib/msim/proc_sys_reset_v5_0_12

vlog -work xil_defaultlib -64 \
"../../../bd/FSM/ip/FSM_stopwatchFSM_0_0/sim/FSM_stopwatchFSM_0_0.v" \
"../../../bd/FSM/ip/FSM_HZ_Counter_0_0/sim/FSM_HZ_Counter_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Module_11.srcs/sources_1/bd/FSM/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../Module_11.srcs/sources_1/bd/FSM/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/FSM/ip/FSM_rst_clk_100MHz_100M_0/sim/FSM_rst_clk_100MHz_100M_0.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/FSM/sim/FSM.v" \

vlog -work xil_defaultlib \
"glbl.v"

