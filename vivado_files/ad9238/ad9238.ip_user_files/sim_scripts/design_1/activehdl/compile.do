transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_21
vlib activehdl/processing_system7_vip_v1_0_23
vlib activehdl/xil_defaultlib
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/axi_register_slice_v2_1_35
vlib activehdl/fifo_generator_v13_2_13
vlib activehdl/axi_data_fifo_v2_1_35
vlib activehdl/axi_crossbar_v2_1_37
vlib activehdl/proc_sys_reset_v5_0_17
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_gpio_v2_0_37
vlib activehdl/axi_protocol_converter_v2_1_36
vlib activehdl/axi_clock_converter_v2_1_34
vlib activehdl/blk_mem_gen_v8_4_11
vlib activehdl/axi_dwidth_converter_v2_1_36

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 activehdl/axi_vip_v1_1_21
vmap processing_system7_vip_v1_0_23 activehdl/processing_system7_vip_v1_0_23
vmap xil_defaultlib activehdl/xil_defaultlib
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_35 activehdl/axi_register_slice_v2_1_35
vmap fifo_generator_v13_2_13 activehdl/fifo_generator_v13_2_13
vmap axi_data_fifo_v2_1_35 activehdl/axi_data_fifo_v2_1_35
vmap axi_crossbar_v2_1_37 activehdl/axi_crossbar_v2_1_37
vmap proc_sys_reset_v5_0_17 activehdl/proc_sys_reset_v5_0_17
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 activehdl/axi_gpio_v2_0_37
vmap axi_protocol_converter_v2_1_36 activehdl/axi_protocol_converter_v2_1_36
vmap axi_clock_converter_v2_1_34 activehdl/axi_clock_converter_v2_1_34
vmap blk_mem_gen_v8_4_11 activehdl/blk_mem_gen_v8_4_11
vmap axi_dwidth_converter_v2_1_36 activehdl/axi_dwidth_converter_v2_1_36

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"E:/Work/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Work/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Work/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Work/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Work/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Work/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Work/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Work/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Work/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"E:/Work/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Work/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"E:/Work/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -sv2k12 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_23  -sv2k12 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/design_1/ip/design_1_processing_system7_0_1/sim/design_1_processing_system7_0_1.v" \
"../../../bd/design_1/ipshared/4023/hdl/fifo_ddr_bridge_master_full_v1_0_M00_AXI.v" \
"../../../bd/design_1/ipshared/4023/hdl/fifo_ddr_bridge.v" \
"../../../bd/design_1/ip/design_1_fifo_ddr_bridge_0_3/sim/design_1_fifo_ddr_bridge_0_3.v" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_35  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_13  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/dc46/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_13 -93  \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/dc46/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_13  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/dc46/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_35  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4846/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_37  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a1a7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/design_1/ip/design_1_axi_mem_intercon_imp_xbar_0/sim/design_1_axi_mem_intercon_imp_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_1/sim/design_1_rst_ps7_0_50M_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/design_1/ip/design_1_fifo_16_64_fwft_0_1/src/fifo_generator_0/sim/fifo_generator_0.v" \
"../../../bd/design_1/ipshared/2615/src/fifo_reader.v" \
"../../../bd/design_1/ipshared/2615/src/fifo_writer.v" \
"../../../bd/design_1/ipshared/2615/src/fifo_16_64_fwft.v" \
"../../../bd/design_1/ip/design_1_fifo_16_64_fwft_0_1/sim/design_1_fifo_16_64_fwft_0_1.v" \
"../../../bd/design_1/ipshared/3b6a/src/adc_decode.v" \
"../../../bd/design_1/ip/design_1_adc12_to_16_0_2/sim/design_1_adc12_to_16_0_2.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1.v" \
"../../../bd/design_1/ip/design_1_ila_0_2/sim/design_1_ila_0_2.v" \
"../../../bd/design_1/ipshared/0fdc/src/key_debouncer.v" \
"../../../bd/design_1/ip/design_1_key_debouncer_0_0/sim/design_1_key_debouncer_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -93  \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/design_1/sim/design_1.v" \

vlog -work axi_protocol_converter_v2_1_36  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/design_1/ip/design_1_axi_mem_intercon_imp_auto_pc_0/sim/design_1_axi_mem_intercon_imp_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_34  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/9a28/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_11  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a32c/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_36  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../ad9238.gen/sources_1/bd/design_1/ipshared/db4c/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+E:/Work/2025.1/Vivado/data/rsb/busdef" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/5431/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/4e08/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/537f/hdl/verilog" "+incdir+../../../../ad9238.gen/sources_1/bd/design_1/ipshared/d41f/hdl/verilog" "+incdir+E:/Work/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/design_1/ip/design_1_axi_mem_intercon_imp_auto_ds_0/sim/design_1_axi_mem_intercon_imp_auto_ds_0.v" \
"../../../bd/design_1/ip/design_1_axi_mem_intercon_imp_auto_pc_1/sim/design_1_axi_mem_intercon_imp_auto_pc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

