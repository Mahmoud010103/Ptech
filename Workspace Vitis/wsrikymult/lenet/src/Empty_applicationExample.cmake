set(ps7_ddr_0_memory_0 "0x100000;0x1ff00000")
set(axi_bram_ctrl_1_memory_1 "0x44000000;0x40000")
set(ps7_ram_0_memory_0 "0x0;0x30000")
set(axi_bram_ctrl_0_memory_0 "0x42000000;0x10000")
set(ps7_ram_1_memory_1 "0xffff0000;0xfe00")
set(DDR ps7_ddr_0_memory_0)
set(CODE ps7_ddr_0_memory_0)
set(DATA ps7_ddr_0_memory_0)
set(TOTAL_MEM_CONTROLLERS "ps7_ddr_0_memory_0;axi_bram_ctrl_1_memory_1;ps7_ram_0_memory_0;axi_bram_ctrl_0_memory_0;ps7_ram_1_memory_1")
set(MEMORY_SECTION "MEMORY
{
	ps7_ddr_0_memory_0 : ORIGIN = 0x100000, LENGTH = 0x1ff00000
	ps7_qspi_linear_0_memory_0 : ORIGIN = 0xfc000000, LENGTH = 0x1000000
	axi_bram_ctrl_1_memory_1 : ORIGIN = 0x44000000, LENGTH = 0x40000
	ps7_ram_0_memory_0 : ORIGIN = 0x0, LENGTH = 0x30000
	axi_bram_ctrl_0_memory_0 : ORIGIN = 0x42000000, LENGTH = 0x10000
	ps7_ram_1_memory_1 : ORIGIN = 0xffff0000, LENGTH = 0xfe00
}")
set(STACK_SIZE 0x2000)
set(HEAP_SIZE 0x2000)
