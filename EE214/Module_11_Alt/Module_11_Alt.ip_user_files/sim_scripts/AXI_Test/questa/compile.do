vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_protocol_checker_v2_0_3
vlib questa_lib/msim/axi_vip_v1_1_3
vlib questa_lib/msim/processing_system7_vip_v1_0_5
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_19
vlib questa_lib/msim/proc_sys_reset_v5_0_12
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/fifo_generator_v13_2_2
vlib questa_lib/msim/axi_data_fifo_v2_1_16
vlib questa_lib/msim/axi_register_slice_v2_1_17
vlib questa_lib/msim/axi_protocol_converter_v2_1_17

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 questa_lib/msim/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 questa_lib/msim/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 questa_lib/msim/processing_system7_vip_v1_0_5
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_19 questa_lib/msim/axi_gpio_v2_0_19
vmap proc_sys_reset_v5_0_12 questa_lib/msim/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_2 questa_lib/msim/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_16 questa_lib/msim/axi_data_fifo_v2_1_16
vmap axi_register_slice_v2_1_17 questa_lib/msim/axi_register_slice_v2_1_17
vmap axi_protocol_converter_v2_1_17 questa_lib/msim/axi_protocol_converter_v2_1_17

vlog -work xilinx_vip -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/AXI_Test/ip/AXI_Test_processing_system7_0_0/sim/AXI_Test_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_19 -64 -93 \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_Test/ip/AXI_Test_axi_gpio_0_0/sim/AXI_Test_axi_gpio_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_Test/ip/AXI_Test_rst_ps7_0_50M_0/sim/AXI_Test_rst_ps7_0_50M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2 -64 "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -64 -93 \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_16 -64 "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17 -64 "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_17 -64 "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/ec67/hdl" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_11_Alt.srcs/sources_1/bd/AXI_Test/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/AXI_Test/ip/AXI_Test_auto_pc_0/sim/AXI_Test_auto_pc_0.v" \
"../../../bd/AXI_Test/sim/AXI_Test.v" \

vlog -work xil_defaultlib \
"glbl.v"
