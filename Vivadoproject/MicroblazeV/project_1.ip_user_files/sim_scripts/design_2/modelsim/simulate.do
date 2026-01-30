onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L xpm -L microblaze_v11_0_16 -L microblaze_riscv_v1_0_7 -L lmb_v10_v3_0_16 -L lmb_bram_if_cntlr_v4_0_27 -L blk_mem_gen_v8_4_12 -L generic_baseblocks_v2_1_2 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_36 -L fifo_generator_v13_2_14 -L axi_data_fifo_v2_1_36 -L axi_crossbar_v2_1_38 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_22 -L xlconcat_v2_1_7 -L mdm_riscv_v1_0_7 -L proc_sys_reset_v5_0_17 -L gigantic_mux -L interrupt_control_v3_1_5 -L axi_gpio_v2_0_37 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_2 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {design_2.udo}

run 1000ns

quit -force
