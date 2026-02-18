vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_bram_ctrl_v4_1_13
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/blk_mem_gen_v8_4_12
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_gpio_v2_0_37
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_36
vlib questa_lib/msim/axi_vip_v1_1_22
vlib questa_lib/msim/processing_system7_vip_v1_0_24
vlib questa_lib/msim/xlconstant_v1_1_10

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_bram_ctrl_v4_1_13 questa_lib/msim/axi_bram_ctrl_v4_1_13
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap blk_mem_gen_v8_4_12 questa_lib/msim/blk_mem_gen_v8_4_12
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 questa_lib/msim/axi_gpio_v2_0_37
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_36 questa_lib/msim/axi_register_slice_v2_1_36
vmap axi_vip_v1_1_22 questa_lib/msim/axi_vip_v1_1_22
vmap processing_system7_vip_v1_0_24 questa_lib/msim/processing_system7_vip_v1_0_24
vmap xlconstant_v1_1_10 questa_lib/msim/xlconstant_v1_1_10

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_bram_ctrl_v4_1_13  -93  \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/2f03/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_2/ip/design_2_axi_bram_ctrl_0_0/sim/design_2_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_12  -incr -mfcu  "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/42f3/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_bram_ctrl_0_bram_0/sim/design_2_axi_bram_ctrl_0_bram_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_2/ip/design_2_axi_bram_ctrl_1_0/sim/design_2_axi_bram_ctrl_1_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_bram_ctrl_1_bram_0/sim/design_2_axi_bram_ctrl_1_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37  -93  \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_2/ip/design_2_axi_gpio_0_0/sim/design_2_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/sim/bd_ebcc.v" \

vcom -work proc_sys_reset_v5_0_17  -93  \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_1/sim/bd_ebcc_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_2/sim/bd_ebcc_arsw_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_3/sim/bd_ebcc_rsw_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_4/sim/bd_ebcc_awsw_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_5/sim/bd_ebcc_wsw_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_6/sim/bd_ebcc_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_7/sim/bd_ebcc_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_8/sim/bd_ebcc_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_9/sim/bd_ebcc_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_10/sim/bd_ebcc_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_11/sim/bd_ebcc_sarn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_12/sim/bd_ebcc_srn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_13/sim/bd_ebcc_sawn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_14/sim/bd_ebcc_swn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_15/sim/bd_ebcc_sbn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_16/sim/bd_ebcc_s01mmu_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_17/sim/bd_ebcc_s01tr_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_18/sim/bd_ebcc_s01sic_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_19/sim/bd_ebcc_s01a2s_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_20/sim/bd_ebcc_sarn_1.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_21/sim/bd_ebcc_srn_1.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_22/sim/bd_ebcc_sawn_1.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_23/sim/bd_ebcc_swn_1.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_24/sim/bd_ebcc_sbn_1.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_25/sim/bd_ebcc_s02mmu_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_26/sim/bd_ebcc_s02tr_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_27/sim/bd_ebcc_s02sic_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_28/sim/bd_ebcc_s02a2s_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_29/sim/bd_ebcc_sarn_2.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_30/sim/bd_ebcc_srn_2.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_31/sim/bd_ebcc_sawn_2.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_32/sim/bd_ebcc_swn_2.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_33/sim/bd_ebcc_sbn_2.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_34/sim/bd_ebcc_s03mmu_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_35/sim/bd_ebcc_s03tr_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_36/sim/bd_ebcc_s03sic_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_37/sim/bd_ebcc_s03a2s_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_38/sim/bd_ebcc_sarn_3.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_39/sim/bd_ebcc_srn_3.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_40/sim/bd_ebcc_sawn_3.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_41/sim/bd_ebcc_swn_3.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_42/sim/bd_ebcc_sbn_3.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_43/sim/bd_ebcc_s04mmu_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_44/sim/bd_ebcc_s04tr_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_45/sim/bd_ebcc_s04sic_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_46/sim/bd_ebcc_s04a2s_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_47/sim/bd_ebcc_sarn_4.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_48/sim/bd_ebcc_srn_4.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_49/sim/bd_ebcc_sawn_4.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_50/sim/bd_ebcc_swn_4.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_51/sim/bd_ebcc_sbn_4.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_52/sim/bd_ebcc_m00s2a_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_53/sim/bd_ebcc_m00arn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_54/sim/bd_ebcc_m00rn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_55/sim/bd_ebcc_m00awn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_56/sim/bd_ebcc_m00wn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_57/sim/bd_ebcc_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_58/sim/bd_ebcc_m00e_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_59/sim/bd_ebcc_m01s2a_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_60/sim/bd_ebcc_m01arn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_61/sim/bd_ebcc_m01rn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_62/sim/bd_ebcc_m01awn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_63/sim/bd_ebcc_m01wn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_64/sim/bd_ebcc_m01bn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_65/sim/bd_ebcc_m01e_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_66/sim/bd_ebcc_m02s2a_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_67/sim/bd_ebcc_m02arn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_68/sim/bd_ebcc_m02rn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_69/sim/bd_ebcc_m02awn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_70/sim/bd_ebcc_m02wn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_71/sim/bd_ebcc_m02bn_0.sv" \
"../../../bd/design_2/ip/design_2_axi_smc_0/bd_0/ip/ip_72/sim/bd_ebcc_m02e_0.sv" \

vcom -work smartconnect_v1_0  -93  \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36  -incr -mfcu  "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_axi_smc_0/sim/design_2_axi_smc_0.sv" \

vlog -work processing_system7_vip_v1_0_24  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_processing_system7_0_1/sim/design_2_processing_system7_0_1.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_2/ip/design_2_rst_ps7_0_100M_0/sim/design_2_rst_ps7_0_100M_0.vhd" \

vlog -work xlconstant_v1_1_10  -incr -mfcu  "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../riky.gen/sources_1/bd/design_2/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_xlconstant_0_0/sim/design_2_xlconstant_0_0.v" \
"../../../bd/design_2/ip/design_2_xlconstant_1_0/sim/design_2_xlconstant_1_0.v" \
"../../../bd/design_2/ip/design_2_xlconstant_2_0/sim/design_2_xlconstant_2_0.v" \
"../../../bd/design_2/ip/design_2_xlconstant_3_0/sim/design_2_xlconstant_3_0.v" \
"../../../bd/design_2/ip/design_2_xlconstant_4_0/sim/design_2_xlconstant_4_0.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ipshared/f579/src/riscv_defines.sv" \
"../../../bd/design_2/ipshared/f579/src/alu.sv" \
"../../../bd/design_2/ipshared/f579/src/alu_div.sv" \
"../../../bd/design_2/ipshared/f579/src/cluster_clock_gating.sv" \
"../../../bd/design_2/ipshared/f579/src/compressed_decoder.sv" \
"../../../bd/design_2/ipshared/f579/src/controller.sv" \
"../../../bd/design_2/ipshared/f579/src/cs_registers.sv" \
"../../../bd/design_2/ipshared/f579/src/debug_unit.sv" \
"../../../bd/design_2/ipshared/f579/src/decoder.sv" \
"../../../bd/design_2/ipshared/f579/src/ex_stage.sv" \
"../../../bd/design_2/ipshared/f579/src/exc_controller.sv" \
"../../../bd/design_2/ipshared/f579/src/hwloop_controller.sv" \
"../../../bd/design_2/ipshared/f579/src/hwloop_regs.sv" \
"../../../bd/design_2/ipshared/f579/src/id_stage.sv" \
"../../../bd/design_2/ipshared/f579/src/if_stage.sv" \
"../../../bd/design_2/ipshared/f579/src/load_store_unit.sv" \
"../../../bd/design_2/ipshared/f579/src/mult.sv" \
"../../../bd/design_2/ipshared/f579/src/prefetch_L0_buffer.sv" \
"../../../bd/design_2/ipshared/f579/src/prefetch_buffer.sv" \
"../../../bd/design_2/ipshared/f579/src/register_file.sv" \
"../../../bd/design_2/ipshared/f579/src/ri5cy_fpga_top.sv" \
"../../../bd/design_2/ipshared/f579/src/ri5cy_to_axi_bridge.sv" \
"../../../bd/design_2/ipshared/f579/src/riscv_config.sv" \
"../../../bd/design_2/ipshared/f579/src/riscv_core.sv" \
"../../../bd/design_2/ipshared/f579/src/ri5cy_axi_wrapper.sv" \
"../../../bd/design_2/ip/design_2_ri5cy_axi_wrapper_0_1/sim/design_2_ri5cy_axi_wrapper_0_1.sv" \
"../../../bd/design_2/ip/design_2_ri5cy_axi_wrapper_0_2/sim/design_2_ri5cy_axi_wrapper_0_2.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/00fe/hdl/verilog" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../riky.gen/sources_1/bd/design_2/ipshared/9a25/hdl" "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_xlconstant_2_1/sim/design_2_xlconstant_2_1.v" \
"../../../bd/design_2/sim/design_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

