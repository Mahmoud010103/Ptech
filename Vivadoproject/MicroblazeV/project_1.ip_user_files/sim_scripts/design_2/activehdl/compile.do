transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/microblaze_v11_0_16
vlib activehdl/microblaze_riscv_v1_0_7
vlib activehdl/xil_defaultlib
vlib activehdl/lmb_v10_v3_0_16
vlib activehdl/lmb_bram_if_cntlr_v4_0_27
vlib activehdl/blk_mem_gen_v8_4_12
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_36
vlib activehdl/fifo_generator_v13_2_14
vlib activehdl/axi_data_fifo_v2_1_36
vlib activehdl/axi_crossbar_v2_1_38
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_intc_v4_1_22
vlib activehdl/xlconcat_v2_1_7
vlib activehdl/mdm_riscv_v1_0_7
vlib activehdl/proc_sys_reset_v5_0_17
vlib activehdl/gigantic_mux
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_gpio_v2_0_37

vmap xpm activehdl/xpm
vmap microblaze_v11_0_16 activehdl/microblaze_v11_0_16
vmap microblaze_riscv_v1_0_7 activehdl/microblaze_riscv_v1_0_7
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lmb_v10_v3_0_16 activehdl/lmb_v10_v3_0_16
vmap lmb_bram_if_cntlr_v4_0_27 activehdl/lmb_bram_if_cntlr_v4_0_27
vmap blk_mem_gen_v8_4_12 activehdl/blk_mem_gen_v8_4_12
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_36 activehdl/axi_register_slice_v2_1_36
vmap fifo_generator_v13_2_14 activehdl/fifo_generator_v13_2_14
vmap axi_data_fifo_v2_1_36 activehdl/axi_data_fifo_v2_1_36
vmap axi_crossbar_v2_1_38 activehdl/axi_crossbar_v2_1_38
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_22 activehdl/axi_intc_v4_1_22
vmap xlconcat_v2_1_7 activehdl/xlconcat_v2_1_7
vmap mdm_riscv_v1_0_7 activehdl/mdm_riscv_v1_0_7
vmap proc_sys_reset_v5_0_17 activehdl/proc_sys_reset_v5_0_17
vmap gigantic_mux activehdl/gigantic_mux
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 activehdl/axi_gpio_v2_0_37

vlog -work xpm  -sv2k12 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_16 -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/c957/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_7 -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/404b/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_2/ip/design_2_microblaze_riscv_0_1/sim/design_2_microblaze_riscv_0_1.vhd" \

vcom -work lmb_v10_v3_0_16 -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/dac4/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_2/ip/design_2_dlmb_v10_1/sim/design_2_dlmb_v10_1.vhd" \
"../../../bd/design_2/ip/design_2_ilmb_v10_1/sim/design_2_ilmb_v10_1.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_27 -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/7cd0/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_2/ip/design_2_dlmb_bram_if_cntlr_1/sim/design_2_dlmb_bram_if_cntlr_1.vhd" \
"../../../bd/design_2/ip/design_2_ilmb_bram_if_cntlr_1/sim/design_2_ilmb_bram_if_cntlr_1.vhd" \

vlog -work blk_mem_gen_v8_4_12  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/42f3/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_2/ip/design_2_lmb_bram_1/sim/design_2_lmb_bram_1.v" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_14  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/d654/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_14 -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/d654/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_14  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/d654/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_36  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/fb46/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_38  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/f084/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_2/ip/design_2_microblaze_riscv_0_axi_periph_upgraded_ipi_imp_xbar_0/sim/design_2_microblaze_riscv_0_axi_periph_upgraded_ipi_imp_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_22 -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/f258/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_2/ip/design_2_microblaze_riscv_0_axi_intc_1/sim/design_2_microblaze_riscv_0_axi_intc_1.vhd" \

vlog -work xlconcat_v2_1_7  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_2/ip/design_2_microblaze_riscv_0_xlconcat_1/sim/design_2_microblaze_riscv_0_xlconcat_1.v" \

vcom -work mdm_riscv_v1_0_7 -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/d25b/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_2/ip/design_2_mdm_1_1/sim/design_2_mdm_1_1.vhd" \

vcom -work proc_sys_reset_v5_0_17 -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_2/ip/design_2_rst_clk_wiz_1_100M_0/sim/design_2_rst_clk_wiz_1_100M_0.vhd" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/sim/bd_074c.vhd" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_0/sim/bd_074c_ila_lib_0.vhd" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/b2b0/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_1/bd_074c_g_inst_0_gigantic_mux.v" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_1/sim/bd_074c_g_inst_0.v" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_2/sim/bd_074c_slot_0_aw_0.v" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_3/sim/bd_074c_slot_0_w_0.v" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_4/sim/bd_074c_slot_0_b_0.v" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_5/sim/bd_074c_slot_0_ar_0.v" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_6/sim/bd_074c_slot_0_r_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_2/ip/design_2_system_ila_0_0/sim/design_2_system_ila_0_0.vhd" \
"../../../bd/design_2/sim/design_2.vhd" \

vcom -work interrupt_control_v3_1_5 -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_2/ip/design_2_axi_gpio_0_1/sim/design_2_axi_gpio_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l xlconcat_v2_1_7 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l gigantic_mux -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_37 \
"../../../bd/design_2/ip/design_2_clk_wiz_0_2/design_2_clk_wiz_0_2_clk_wiz.v" \
"../../../bd/design_2/ip/design_2_clk_wiz_0_2/design_2_clk_wiz_0_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

