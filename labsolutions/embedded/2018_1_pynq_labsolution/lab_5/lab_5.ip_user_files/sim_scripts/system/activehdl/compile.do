vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_2
vlib activehdl/axi_vip_v1_1_2
vlib activehdl/processing_system7_vip_v1_0_4
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_18
vlib activehdl/proc_sys_reset_v5_0_12
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_16
vlib activehdl/fifo_generator_v13_2_2
vlib activehdl/axi_data_fifo_v2_1_15
vlib activehdl/axi_crossbar_v2_1_17
vlib activehdl/blk_mem_gen_v8_3_6
vlib activehdl/axi_bram_ctrl_v4_0_14
vlib activehdl/blk_mem_gen_v8_4_1
vlib activehdl/axi_protocol_converter_v2_1_16

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_2 activehdl/axi_protocol_checker_v2_0_2
vmap axi_vip_v1_1_2 activehdl/axi_vip_v1_1_2
vmap processing_system7_vip_v1_0_4 activehdl/processing_system7_vip_v1_0_4
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_18 activehdl/axi_gpio_v2_0_18
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_16 activehdl/axi_register_slice_v2_1_16
vmap fifo_generator_v13_2_2 activehdl/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_15 activehdl/axi_data_fifo_v2_1_15
vmap axi_crossbar_v2_1_17 activehdl/axi_crossbar_v2_1_17
vmap blk_mem_gen_v8_3_6 activehdl/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_0_14 activehdl/axi_bram_ctrl_v4_0_14
vmap blk_mem_gen_v8_4_1 activehdl/blk_mem_gen_v8_4_1
vmap axi_protocol_converter_v2_1_16 activehdl/axi_protocol_converter_v2_1_16

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_2  -sv2k12 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/3755/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_2  -sv2k12 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/725c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_4  -sv2k12 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/sim/system.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_18 -93 \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/fbf9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \
"../../../bd/system/ip/system_axi_gpio_0_1/sim/system_axi_gpio_0_1.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_16  -v2k5 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/0cde/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_15  -v2k5 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/d114/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_17  -v2k5 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/d293/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
"../../../bd/system/ipshared/e380/hdl/led_ip_v1_0.v" \
"../../../bd/system/ipshared/e380/src/lab3_user_logic.v" \
"../../../bd/system/ipshared/e380/src/led_ip_v1_0_S_AXI.v" \
"../../../bd/system/ip/system_led_ip_0_0/sim/system_led_ip_0_0.v" \

vlog -work blk_mem_gen_v8_3_6  -v2k5 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_0_14 -93 \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/6db1/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_bram_ctrl_0_0/sim/system_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_bram_ctrl_0_bram_0/sim/system_axi_bram_ctrl_0_bram_0.v" \

vlog -work axi_protocol_converter_v2_1_16  -v2k5 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../lab_3.srcs/sources_1/bd/system/ipshared/1229/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../lab_3.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+C:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_2/sim/system_auto_pc_2.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/ip/system_auto_pc_3/sim/system_auto_pc_3.v" \

vlog -work xil_defaultlib \
"glbl.v"

