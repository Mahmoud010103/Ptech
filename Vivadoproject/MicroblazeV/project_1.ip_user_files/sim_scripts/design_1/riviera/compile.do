transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_21
vlib riviera/processing_system7_vip_v1_0_23
vlib riviera/xil_defaultlib
vlib riviera/microblaze_v11_0_15
vlib riviera/microblaze_riscv_v1_0_5
vlib riviera/lmb_v10_v3_0_15
vlib riviera/lmb_bram_if_cntlr_v4_0_26
vlib riviera/blk_mem_gen_v8_4_11
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_register_slice_v2_1_35
vlib riviera/fifo_generator_v13_2_13
vlib riviera/axi_data_fifo_v2_1_35
vlib riviera/axi_crossbar_v2_1_37
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/axi_intc_v4_1_21
vlib riviera/xlconcat_v2_1_7
vlib riviera/mdm_riscv_v1_0_5
vlib riviera/proc_sys_reset_v5_0_17
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_37
vlib riviera/axi_protocol_converter_v2_1_36

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 riviera/axi_vip_v1_1_21
vmap processing_system7_vip_v1_0_23 riviera/processing_system7_vip_v1_0_23
vmap xil_defaultlib riviera/xil_defaultlib
vmap microblaze_v11_0_15 riviera/microblaze_v11_0_15
vmap microblaze_riscv_v1_0_5 riviera/microblaze_riscv_v1_0_5
vmap lmb_v10_v3_0_15 riviera/lmb_v10_v3_0_15
vmap lmb_bram_if_cntlr_v4_0_26 riviera/lmb_bram_if_cntlr_v4_0_26
vmap blk_mem_gen_v8_4_11 riviera/blk_mem_gen_v8_4_11
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_35 riviera/axi_register_slice_v2_1_35
vmap fifo_generator_v13_2_13 riviera/fifo_generator_v13_2_13
vmap axi_data_fifo_v2_1_35 riviera/axi_data_fifo_v2_1_35
vmap axi_crossbar_v2_1_37 riviera/axi_crossbar_v2_1_37
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_21 riviera/axi_intc_v4_1_21
vmap xlconcat_v2_1_7 riviera/xlconcat_v2_1_7
vmap mdm_riscv_v1_0_5 riviera/mdm_riscv_v1_0_5
vmap proc_sys_reset_v5_0_17 riviera/proc_sys_reset_v5_0_17
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 riviera/axi_gpio_v2_0_37
vmap axi_protocol_converter_v2_1_36 riviera/axi_protocol_converter_v2_1_36

vlog -work xilinx_vip  -incr "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_23  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../bd/design_1/ip/design_1_processing_system7_0_1/sim/design_1_processing_system7_0_1.v" \

vcom -work microblaze_v11_0_15 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/75f6/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_5 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/0725/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_microblaze_riscv_0_1/sim/design_1_microblaze_riscv_0_1.vhd" \

vcom -work lmb_v10_v3_0_15 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/b1c4/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_dlmb_v10_1/sim/design_1_dlmb_v10_1.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_1/sim/design_1_ilmb_v10_1.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_26 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/0e64/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_1/sim/design_1_dlmb_bram_if_cntlr_1.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_1/sim/design_1_ilmb_bram_if_cntlr_1.vhd" \

vlog -work blk_mem_gen_v8_4_11  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/a32c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../bd/design_1/ip/design_1_lmb_bram_1/sim/design_1_lmb_bram_1.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_35  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_13  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/dc46/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_13 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/dc46/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_13  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/dc46/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_35  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/4846/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_37  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/a1a7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../bd/design_1/ip/design_1_microblaze_riscv_0_axi_periph_imp_xbar_1/sim/design_1_microblaze_riscv_0_axi_periph_imp_xbar_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_21 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/9eb6/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_microblaze_riscv_0_axi_intc_1/sim/design_1_microblaze_riscv_0_axi_intc_1.vhd" \

vlog -work xlconcat_v2_1_7  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../bd/design_1/ip/design_1_microblaze_riscv_0_xlconcat_1/sim/design_1_microblaze_riscv_0_xlconcat_1.v" \

vcom -work mdm_riscv_v1_0_5 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2c73/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_mdm_1_1/sim/design_1_mdm_1_1.vhd" \

vcom -work proc_sys_reset_v5_0_17 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_1/sim/design_1_rst_ps7_0_100M_1.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_36  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+C:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l microblaze_v11_0_15 -l microblaze_riscv_v1_0_5 -l lmb_v10_v3_0_15 -l lmb_bram_if_cntlr_v4_0_26 -l blk_mem_gen_v8_4_11 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_21 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_5 -l proc_sys_reset_v5_0_17 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 -l axi_protocol_converter_v2_1_36 \
"../../../bd/design_1/ip/design_1_microblaze_riscv_0_axi_periph_imp_auto_pc_0/sim/design_1_microblaze_riscv_0_axi_periph_imp_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

