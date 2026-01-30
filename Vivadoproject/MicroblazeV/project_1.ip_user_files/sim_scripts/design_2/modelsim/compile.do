vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/microblaze_v11_0_16
vlib modelsim_lib/msim/microblaze_riscv_v1_0_7
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lmb_v10_v3_0_16
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_27
vlib modelsim_lib/msim/blk_mem_gen_v8_4_12
vlib modelsim_lib/msim/generic_baseblocks_v2_1_2
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_36
vlib modelsim_lib/msim/fifo_generator_v13_2_14
vlib modelsim_lib/msim/axi_data_fifo_v2_1_36
vlib modelsim_lib/msim/axi_crossbar_v2_1_38
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/axi_intc_v4_1_22
vlib modelsim_lib/msim/xlconcat_v2_1_7
vlib modelsim_lib/msim/mdm_riscv_v1_0_7
vlib modelsim_lib/msim/proc_sys_reset_v5_0_17
vlib modelsim_lib/msim/gigantic_mux
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_gpio_v2_0_37

vmap xpm modelsim_lib/msim/xpm
vmap microblaze_v11_0_16 modelsim_lib/msim/microblaze_v11_0_16
vmap microblaze_riscv_v1_0_7 modelsim_lib/msim/microblaze_riscv_v1_0_7
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_16 modelsim_lib/msim/lmb_v10_v3_0_16
vmap lmb_bram_if_cntlr_v4_0_27 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_27
vmap blk_mem_gen_v8_4_12 modelsim_lib/msim/blk_mem_gen_v8_4_12
vmap generic_baseblocks_v2_1_2 modelsim_lib/msim/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_36 modelsim_lib/msim/axi_register_slice_v2_1_36
vmap fifo_generator_v13_2_14 modelsim_lib/msim/fifo_generator_v13_2_14
vmap axi_data_fifo_v2_1_36 modelsim_lib/msim/axi_data_fifo_v2_1_36
vmap axi_crossbar_v2_1_38 modelsim_lib/msim/axi_crossbar_v2_1_38
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_22 modelsim_lib/msim/axi_intc_v4_1_22
vmap xlconcat_v2_1_7 modelsim_lib/msim/xlconcat_v2_1_7
vmap mdm_riscv_v1_0_7 modelsim_lib/msim/mdm_riscv_v1_0_7
vmap proc_sys_reset_v5_0_17 modelsim_lib/msim/proc_sys_reset_v5_0_17
vmap gigantic_mux modelsim_lib/msim/gigantic_mux
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 modelsim_lib/msim/axi_gpio_v2_0_37

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_16  -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/c957/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_7  -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/404b/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_2/ip/design_2_microblaze_riscv_0_1/sim/design_2_microblaze_riscv_0_1.vhd" \

vcom -work lmb_v10_v3_0_16  -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/dac4/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_2/ip/design_2_dlmb_v10_1/sim/design_2_dlmb_v10_1.vhd" \
"../../../bd/design_2/ip/design_2_ilmb_v10_1/sim/design_2_ilmb_v10_1.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_27  -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/7cd0/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_2/ip/design_2_dlmb_bram_if_cntlr_1/sim/design_2_dlmb_bram_if_cntlr_1.vhd" \
"../../../bd/design_2/ip/design_2_ilmb_bram_if_cntlr_1/sim/design_2_ilmb_bram_if_cntlr_1.vhd" \

vlog -work blk_mem_gen_v8_4_12  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/42f3/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../bd/design_2/ip/design_2_lmb_bram_1/sim/design_2_lmb_bram_1.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_14  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/d654/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_14  -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/d654/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_14  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/d654/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_36  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/fb46/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_38  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/f084/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../bd/design_2/ip/design_2_microblaze_riscv_0_axi_periph_upgraded_ipi_imp_xbar_0/sim/design_2_microblaze_riscv_0_axi_periph_upgraded_ipi_imp_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_22  -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/f258/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_2/ip/design_2_microblaze_riscv_0_axi_intc_1/sim/design_2_microblaze_riscv_0_axi_intc_1.vhd" \

vlog -work xlconcat_v2_1_7  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/9c1a/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../bd/design_2/ip/design_2_microblaze_riscv_0_xlconcat_1/sim/design_2_microblaze_riscv_0_xlconcat_1.v" \

vcom -work mdm_riscv_v1_0_7  -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/d25b/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_2/ip/design_2_mdm_1_1/sim/design_2_mdm_1_1.vhd" \

vcom -work proc_sys_reset_v5_0_17  -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_2/ip/design_2_rst_clk_wiz_1_100M_0/sim/design_2_rst_clk_wiz_1_100M_0.vhd" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/sim/bd_074c.vhd" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_0/sim/bd_074c_ila_lib_0.vhd" \

vlog -work gigantic_mux  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/b2b0/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_1/bd_074c_g_inst_0_gigantic_mux.v" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_1/sim/bd_074c_g_inst_0.v" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_2/sim/bd_074c_slot_0_aw_0.v" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_3/sim/bd_074c_slot_0_w_0.v" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_4/sim/bd_074c_slot_0_b_0.v" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_5/sim/bd_074c_slot_0_ar_0.v" \
"../../../bd/design_2/ip/design_2_system_ila_0_0/bd_0/ip/ip_6/sim/bd_074c_slot_0_r_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_2/ip/design_2_system_ila_0_0/sim/design_2_system_ila_0_0.vhd" \
"../../../bd/design_2/sim/design_2.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37  -93  \
"../../../../project_1.gen/sources_1/bd/design_2/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_2/ip/design_2_axi_gpio_0_1/sim/design_2_axi_gpio_0_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/a415" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/5431/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/4e08/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/0568/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_2/ipshared/3556/hdl/verilog" \
"../../../bd/design_2/ip/design_2_clk_wiz_0_2/design_2_clk_wiz_0_2_clk_wiz.v" \
"../../../bd/design_2/ip/design_2_clk_wiz_0_2/design_2_clk_wiz_0_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

