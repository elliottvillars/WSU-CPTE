vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12

vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_ssd_dec_0_0/sim/Bounce_Timer_ssd_dec_0_0.v" \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_ssd_mux_0_0/sim/Bounce_Timer_ssd_mux_0_0.v" \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_stopwatch_ssd_driver_0_0/sim/Bounce_Timer_stopwatch_ssd_driver_0_0.v" \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_HZ_Counter_0_0/sim/Bounce_Timer_HZ_Counter_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Module_1.srcs/sources_1/bd/Bounce_Timer/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../Module_1.srcs/sources_1/bd/Bounce_Timer/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_rst_clk_100MHz_100M_0/sim/Bounce_Timer_rst_clk_100MHz_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_Bounce_Counter_FSM_0_0/sim/Bounce_Timer_Bounce_Counter_FSM_0_0.v" \
"../../../bd/Bounce_Timer/sim/Bounce_Timer.v" \

vlog -work xil_defaultlib \
"glbl.v"

