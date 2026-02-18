//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Thu Jan 22 10:50:16 2026
//Host        : DESKTOP-E8CT5SI running 64-bit major release  (build 9200)
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=16,numReposBlks=16,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=4,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   (DDR_0_addr,
    DDR_0_ba,
    DDR_0_cas_n,
    DDR_0_ck_n,
    DDR_0_ck_p,
    DDR_0_cke,
    DDR_0_cs_n,
    DDR_0_dm,
    DDR_0_dq,
    DDR_0_dqs_n,
    DDR_0_dqs_p,
    DDR_0_odt,
    DDR_0_ras_n,
    DDR_0_reset_n,
    DDR_0_we_n,
    FIXED_IO_0_ddr_vrn,
    FIXED_IO_0_ddr_vrp,
    FIXED_IO_0_mio,
    FIXED_IO_0_ps_clk,
    FIXED_IO_0_ps_porb,
    FIXED_IO_0_ps_srstb,
    aresetn_0,
    leds_8bits_tri_o);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 ADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR_0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 BA" *) inout [2:0]DDR_0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CAS_N" *) inout DDR_0_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CK_N" *) inout DDR_0_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CK_P" *) inout DDR_0_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CKE" *) inout DDR_0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 CS_N" *) inout DDR_0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DM" *) inout [3:0]DDR_0_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQ" *) inout [31:0]DDR_0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_N" *) inout [3:0]DDR_0_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 DQS_P" *) inout [3:0]DDR_0_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 ODT" *) inout DDR_0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 RAS_N" *) inout DDR_0_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 RESET_N" *) inout DDR_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR_0 WE_N" *) inout DDR_0_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRN" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO_0, CAN_DEBUG false" *) inout FIXED_IO_0_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 DDR_VRP" *) inout FIXED_IO_0_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 MIO" *) inout [53:0]FIXED_IO_0_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_CLK" *) inout FIXED_IO_0_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_PORB" *) inout FIXED_IO_0_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_SRSTB" *) inout FIXED_IO_0_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 leds_8bits TRI_O" *) (* X_INTERFACE_MODE = "Master" *) output [7:0]leds_8bits_tri_o;

  wire [14:0]DDR_0_addr;
  wire [2:0]DDR_0_ba;
  wire DDR_0_cas_n;
  wire DDR_0_ck_n;
  wire DDR_0_ck_p;
  wire DDR_0_cke;
  wire DDR_0_cs_n;
  wire [3:0]DDR_0_dm;
  wire [31:0]DDR_0_dq;
  wire [3:0]DDR_0_dqs_n;
  wire [3:0]DDR_0_dqs_p;
  wire DDR_0_odt;
  wire DDR_0_ras_n;
  wire DDR_0_reset_n;
  wire DDR_0_we_n;
  wire FIXED_IO_0_ddr_vrn;
  wire FIXED_IO_0_ddr_vrp;
  wire [53:0]FIXED_IO_0_mio;
  wire FIXED_IO_0_ps_clk;
  wire FIXED_IO_0_ps_porb;
  wire FIXED_IO_0_ps_srstb;
  wire aresetn_0;
  wire [15:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [17:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  wire [15:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [15:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [3:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [17:0]axi_smc_M01_AXI_ARADDR;
  wire [1:0]axi_smc_M01_AXI_ARBURST;
  wire [3:0]axi_smc_M01_AXI_ARCACHE;
  wire [7:0]axi_smc_M01_AXI_ARLEN;
  wire [0:0]axi_smc_M01_AXI_ARLOCK;
  wire [2:0]axi_smc_M01_AXI_ARPROT;
  wire axi_smc_M01_AXI_ARREADY;
  wire [2:0]axi_smc_M01_AXI_ARSIZE;
  wire axi_smc_M01_AXI_ARVALID;
  wire [17:0]axi_smc_M01_AXI_AWADDR;
  wire [1:0]axi_smc_M01_AXI_AWBURST;
  wire [3:0]axi_smc_M01_AXI_AWCACHE;
  wire [7:0]axi_smc_M01_AXI_AWLEN;
  wire [0:0]axi_smc_M01_AXI_AWLOCK;
  wire [2:0]axi_smc_M01_AXI_AWPROT;
  wire axi_smc_M01_AXI_AWREADY;
  wire [2:0]axi_smc_M01_AXI_AWSIZE;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RLAST;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WLAST;
  wire axi_smc_M01_AXI_WREADY;
  wire [3:0]axi_smc_M01_AXI_WSTRB;
  wire axi_smc_M01_AXI_WVALID;
  wire [8:0]axi_smc_M02_AXI_ARADDR;
  wire axi_smc_M02_AXI_ARREADY;
  wire axi_smc_M02_AXI_ARVALID;
  wire [8:0]axi_smc_M02_AXI_AWADDR;
  wire axi_smc_M02_AXI_AWREADY;
  wire axi_smc_M02_AXI_AWVALID;
  wire axi_smc_M02_AXI_BREADY;
  wire [1:0]axi_smc_M02_AXI_BRESP;
  wire axi_smc_M02_AXI_BVALID;
  wire [31:0]axi_smc_M02_AXI_RDATA;
  wire axi_smc_M02_AXI_RREADY;
  wire [1:0]axi_smc_M02_AXI_RRESP;
  wire axi_smc_M02_AXI_RVALID;
  wire [31:0]axi_smc_M02_AXI_WDATA;
  wire axi_smc_M02_AXI_WREADY;
  wire [3:0]axi_smc_M02_AXI_WSTRB;
  wire axi_smc_M02_AXI_WVALID;
  wire [7:0]leds_8bits_tri_o;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [31:0]ri5cy_axi_wrapper_0_m_axi_data_ARADDR;
  wire [2:0]ri5cy_axi_wrapper_0_m_axi_data_ARPROT;
  wire ri5cy_axi_wrapper_0_m_axi_data_ARREADY;
  wire ri5cy_axi_wrapper_0_m_axi_data_ARVALID;
  wire [31:0]ri5cy_axi_wrapper_0_m_axi_data_AWADDR;
  wire [2:0]ri5cy_axi_wrapper_0_m_axi_data_AWPROT;
  wire ri5cy_axi_wrapper_0_m_axi_data_AWREADY;
  wire ri5cy_axi_wrapper_0_m_axi_data_AWVALID;
  wire ri5cy_axi_wrapper_0_m_axi_data_BREADY;
  wire [1:0]ri5cy_axi_wrapper_0_m_axi_data_BRESP;
  wire ri5cy_axi_wrapper_0_m_axi_data_BVALID;
  wire [31:0]ri5cy_axi_wrapper_0_m_axi_data_RDATA;
  wire ri5cy_axi_wrapper_0_m_axi_data_RREADY;
  wire [1:0]ri5cy_axi_wrapper_0_m_axi_data_RRESP;
  wire ri5cy_axi_wrapper_0_m_axi_data_RVALID;
  wire [31:0]ri5cy_axi_wrapper_0_m_axi_data_WDATA;
  wire ri5cy_axi_wrapper_0_m_axi_data_WREADY;
  wire [3:0]ri5cy_axi_wrapper_0_m_axi_data_WSTRB;
  wire ri5cy_axi_wrapper_0_m_axi_data_WVALID;
  wire [31:0]ri5cy_axi_wrapper_0_m_axi_instr_ARADDR;
  wire [2:0]ri5cy_axi_wrapper_0_m_axi_instr_ARPROT;
  wire ri5cy_axi_wrapper_0_m_axi_instr_ARREADY;
  wire ri5cy_axi_wrapper_0_m_axi_instr_ARVALID;
  wire [31:0]ri5cy_axi_wrapper_0_m_axi_instr_AWADDR;
  wire [2:0]ri5cy_axi_wrapper_0_m_axi_instr_AWPROT;
  wire ri5cy_axi_wrapper_0_m_axi_instr_AWREADY;
  wire ri5cy_axi_wrapper_0_m_axi_instr_AWVALID;
  wire ri5cy_axi_wrapper_0_m_axi_instr_BREADY;
  wire [1:0]ri5cy_axi_wrapper_0_m_axi_instr_BRESP;
  wire ri5cy_axi_wrapper_0_m_axi_instr_BVALID;
  wire [31:0]ri5cy_axi_wrapper_0_m_axi_instr_RDATA;
  wire ri5cy_axi_wrapper_0_m_axi_instr_RREADY;
  wire [1:0]ri5cy_axi_wrapper_0_m_axi_instr_RRESP;
  wire ri5cy_axi_wrapper_0_m_axi_instr_RVALID;
  wire [31:0]ri5cy_axi_wrapper_0_m_axi_instr_WDATA;
  wire ri5cy_axi_wrapper_0_m_axi_instr_WREADY;
  wire [3:0]ri5cy_axi_wrapper_0_m_axi_instr_WSTRB;
  wire ri5cy_axi_wrapper_0_m_axi_instr_WVALID;
  wire [31:0]ri5cy_axi_wrapper_1_m_axi_data_ARADDR;
  wire [2:0]ri5cy_axi_wrapper_1_m_axi_data_ARPROT;
  wire ri5cy_axi_wrapper_1_m_axi_data_ARREADY;
  wire ri5cy_axi_wrapper_1_m_axi_data_ARVALID;
  wire [31:0]ri5cy_axi_wrapper_1_m_axi_data_AWADDR;
  wire [2:0]ri5cy_axi_wrapper_1_m_axi_data_AWPROT;
  wire ri5cy_axi_wrapper_1_m_axi_data_AWREADY;
  wire ri5cy_axi_wrapper_1_m_axi_data_AWVALID;
  wire ri5cy_axi_wrapper_1_m_axi_data_BREADY;
  wire [1:0]ri5cy_axi_wrapper_1_m_axi_data_BRESP;
  wire ri5cy_axi_wrapper_1_m_axi_data_BVALID;
  wire [31:0]ri5cy_axi_wrapper_1_m_axi_data_RDATA;
  wire ri5cy_axi_wrapper_1_m_axi_data_RREADY;
  wire [1:0]ri5cy_axi_wrapper_1_m_axi_data_RRESP;
  wire ri5cy_axi_wrapper_1_m_axi_data_RVALID;
  wire [31:0]ri5cy_axi_wrapper_1_m_axi_data_WDATA;
  wire ri5cy_axi_wrapper_1_m_axi_data_WREADY;
  wire [3:0]ri5cy_axi_wrapper_1_m_axi_data_WSTRB;
  wire ri5cy_axi_wrapper_1_m_axi_data_WVALID;
  wire [31:0]ri5cy_axi_wrapper_1_m_axi_instr_ARADDR;
  wire [2:0]ri5cy_axi_wrapper_1_m_axi_instr_ARPROT;
  wire ri5cy_axi_wrapper_1_m_axi_instr_ARREADY;
  wire ri5cy_axi_wrapper_1_m_axi_instr_ARVALID;
  wire [31:0]ri5cy_axi_wrapper_1_m_axi_instr_AWADDR;
  wire [2:0]ri5cy_axi_wrapper_1_m_axi_instr_AWPROT;
  wire ri5cy_axi_wrapper_1_m_axi_instr_AWREADY;
  wire ri5cy_axi_wrapper_1_m_axi_instr_AWVALID;
  wire ri5cy_axi_wrapper_1_m_axi_instr_BREADY;
  wire [1:0]ri5cy_axi_wrapper_1_m_axi_instr_BRESP;
  wire ri5cy_axi_wrapper_1_m_axi_instr_BVALID;
  wire [31:0]ri5cy_axi_wrapper_1_m_axi_instr_RDATA;
  wire ri5cy_axi_wrapper_1_m_axi_instr_RREADY;
  wire [1:0]ri5cy_axi_wrapper_1_m_axi_instr_RRESP;
  wire ri5cy_axi_wrapper_1_m_axi_instr_RVALID;
  wire [31:0]ri5cy_axi_wrapper_1_m_axi_instr_WDATA;
  wire ri5cy_axi_wrapper_1_m_axi_instr_WREADY;
  wire [3:0]ri5cy_axi_wrapper_1_m_axi_instr_WSTRB;
  wire ri5cy_axi_wrapper_1_m_axi_instr_WVALID;
  wire [0:0]rst_ps7_0_100M_peripheral_aresetn;
  wire [31:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [3:0]xlconstant_2_dout;
  wire [5:0]xlconstant_3_dout;
  wire [31:0]xlconstant_4_dout;
  wire [3:0]xlconstant_5_dout;

  (* BMM_INFO_ADDRESS_SPACE = "byte  0x42000000 32 > design_2 axi_bram_ctrl_0_bram" *) 
  (* KEEP_HIERARCHY = "YES" *) 
  design_2_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M00_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M00_AXI_ARCACHE),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arlen(axi_smc_M00_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M00_AXI_ARPROT),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M00_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M00_AXI_AWCACHE),
        .s_axi_awlen(axi_smc_M00_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M00_AXI_AWPROT),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rlast(axi_smc_M00_AXI_RLAST),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wlast(axi_smc_M00_AXI_WLAST),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID));
  design_2_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x44000000 32 > design_2 axi_bram_ctrl_1_bram" *) 
  (* KEEP_HIERARCHY = "YES" *) 
  design_2_axi_bram_ctrl_1_0 axi_bram_ctrl_1
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M01_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M01_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M01_AXI_ARCACHE),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arlen(axi_smc_M01_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M01_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M01_AXI_ARPROT),
        .s_axi_arready(axi_smc_M01_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M01_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M01_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M01_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M01_AXI_AWCACHE),
        .s_axi_awlen(axi_smc_M01_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M01_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M01_AXI_AWPROT),
        .s_axi_awready(axi_smc_M01_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M01_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M01_AXI_AWVALID),
        .s_axi_bready(axi_smc_M01_AXI_BREADY),
        .s_axi_bresp(axi_smc_M01_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M01_AXI_BVALID),
        .s_axi_rdata(axi_smc_M01_AXI_RDATA),
        .s_axi_rlast(axi_smc_M01_AXI_RLAST),
        .s_axi_rready(axi_smc_M01_AXI_RREADY),
        .s_axi_rresp(axi_smc_M01_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M01_AXI_RVALID),
        .s_axi_wdata(axi_smc_M01_AXI_WDATA),
        .s_axi_wlast(axi_smc_M01_AXI_WLAST),
        .s_axi_wready(axi_smc_M01_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M01_AXI_WVALID));
  design_2_axi_bram_ctrl_1_bram_0 axi_bram_ctrl_1_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_1_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_1_BRAM_PORTA_WE));
  design_2_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_o(leds_8bits_tri_o),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M02_AXI_ARADDR),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M02_AXI_AWADDR),
        .s_axi_awready(axi_smc_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M02_AXI_AWVALID),
        .s_axi_bready(axi_smc_M02_AXI_BREADY),
        .s_axi_bresp(axi_smc_M02_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M02_AXI_BVALID),
        .s_axi_rdata(axi_smc_M02_AXI_RDATA),
        .s_axi_rready(axi_smc_M02_AXI_RREADY),
        .s_axi_rresp(axi_smc_M02_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M02_AXI_RVALID),
        .s_axi_wdata(axi_smc_M02_AXI_WDATA),
        .s_axi_wready(axi_smc_M02_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M02_AXI_WVALID));
  design_2_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_smc_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_smc_M01_AXI_ARCACHE),
        .M01_AXI_arlen(axi_smc_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_smc_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_smc_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arsize(axi_smc_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_smc_M01_AXI_AWBURST),
        .M01_AXI_awcache(axi_smc_M01_AXI_AWCACHE),
        .M01_AXI_awlen(axi_smc_M01_AXI_AWLEN),
        .M01_AXI_awlock(axi_smc_M01_AXI_AWLOCK),
        .M01_AXI_awprot(axi_smc_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awsize(axi_smc_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rlast(axi_smc_M01_AXI_RLAST),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_smc_M01_AXI_WLAST),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_smc_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_smc_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_smc_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_smc_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_smc_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_M02_AXI_RDATA),
        .M02_AXI_rready(axi_smc_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_M02_AXI_WDATA),
        .M02_AXI_wready(axi_smc_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_smc_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_smc_M02_AXI_WVALID),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .S01_AXI_araddr(ri5cy_axi_wrapper_0_m_axi_data_ARADDR),
        .S01_AXI_arprot(ri5cy_axi_wrapper_0_m_axi_data_ARPROT),
        .S01_AXI_arready(ri5cy_axi_wrapper_0_m_axi_data_ARREADY),
        .S01_AXI_arvalid(ri5cy_axi_wrapper_0_m_axi_data_ARVALID),
        .S01_AXI_awaddr(ri5cy_axi_wrapper_0_m_axi_data_AWADDR),
        .S01_AXI_awprot(ri5cy_axi_wrapper_0_m_axi_data_AWPROT),
        .S01_AXI_awready(ri5cy_axi_wrapper_0_m_axi_data_AWREADY),
        .S01_AXI_awvalid(ri5cy_axi_wrapper_0_m_axi_data_AWVALID),
        .S01_AXI_bready(ri5cy_axi_wrapper_0_m_axi_data_BREADY),
        .S01_AXI_bresp(ri5cy_axi_wrapper_0_m_axi_data_BRESP),
        .S01_AXI_bvalid(ri5cy_axi_wrapper_0_m_axi_data_BVALID),
        .S01_AXI_rdata(ri5cy_axi_wrapper_0_m_axi_data_RDATA),
        .S01_AXI_rready(ri5cy_axi_wrapper_0_m_axi_data_RREADY),
        .S01_AXI_rresp(ri5cy_axi_wrapper_0_m_axi_data_RRESP),
        .S01_AXI_rvalid(ri5cy_axi_wrapper_0_m_axi_data_RVALID),
        .S01_AXI_wdata(ri5cy_axi_wrapper_0_m_axi_data_WDATA),
        .S01_AXI_wready(ri5cy_axi_wrapper_0_m_axi_data_WREADY),
        .S01_AXI_wstrb(ri5cy_axi_wrapper_0_m_axi_data_WSTRB),
        .S01_AXI_wvalid(ri5cy_axi_wrapper_0_m_axi_data_WVALID),
        .S02_AXI_araddr(ri5cy_axi_wrapper_0_m_axi_instr_ARADDR),
        .S02_AXI_arprot(ri5cy_axi_wrapper_0_m_axi_instr_ARPROT),
        .S02_AXI_arready(ri5cy_axi_wrapper_0_m_axi_instr_ARREADY),
        .S02_AXI_arvalid(ri5cy_axi_wrapper_0_m_axi_instr_ARVALID),
        .S02_AXI_awaddr(ri5cy_axi_wrapper_0_m_axi_instr_AWADDR),
        .S02_AXI_awprot(ri5cy_axi_wrapper_0_m_axi_instr_AWPROT),
        .S02_AXI_awready(ri5cy_axi_wrapper_0_m_axi_instr_AWREADY),
        .S02_AXI_awvalid(ri5cy_axi_wrapper_0_m_axi_instr_AWVALID),
        .S02_AXI_bready(ri5cy_axi_wrapper_0_m_axi_instr_BREADY),
        .S02_AXI_bresp(ri5cy_axi_wrapper_0_m_axi_instr_BRESP),
        .S02_AXI_bvalid(ri5cy_axi_wrapper_0_m_axi_instr_BVALID),
        .S02_AXI_rdata(ri5cy_axi_wrapper_0_m_axi_instr_RDATA),
        .S02_AXI_rready(ri5cy_axi_wrapper_0_m_axi_instr_RREADY),
        .S02_AXI_rresp(ri5cy_axi_wrapper_0_m_axi_instr_RRESP),
        .S02_AXI_rvalid(ri5cy_axi_wrapper_0_m_axi_instr_RVALID),
        .S02_AXI_wdata(ri5cy_axi_wrapper_0_m_axi_instr_WDATA),
        .S02_AXI_wready(ri5cy_axi_wrapper_0_m_axi_instr_WREADY),
        .S02_AXI_wstrb(ri5cy_axi_wrapper_0_m_axi_instr_WSTRB),
        .S02_AXI_wvalid(ri5cy_axi_wrapper_0_m_axi_instr_WVALID),
        .S03_AXI_araddr(ri5cy_axi_wrapper_1_m_axi_data_ARADDR),
        .S03_AXI_arprot(ri5cy_axi_wrapper_1_m_axi_data_ARPROT),
        .S03_AXI_arready(ri5cy_axi_wrapper_1_m_axi_data_ARREADY),
        .S03_AXI_arvalid(ri5cy_axi_wrapper_1_m_axi_data_ARVALID),
        .S03_AXI_awaddr(ri5cy_axi_wrapper_1_m_axi_data_AWADDR),
        .S03_AXI_awprot(ri5cy_axi_wrapper_1_m_axi_data_AWPROT),
        .S03_AXI_awready(ri5cy_axi_wrapper_1_m_axi_data_AWREADY),
        .S03_AXI_awvalid(ri5cy_axi_wrapper_1_m_axi_data_AWVALID),
        .S03_AXI_bready(ri5cy_axi_wrapper_1_m_axi_data_BREADY),
        .S03_AXI_bresp(ri5cy_axi_wrapper_1_m_axi_data_BRESP),
        .S03_AXI_bvalid(ri5cy_axi_wrapper_1_m_axi_data_BVALID),
        .S03_AXI_rdata(ri5cy_axi_wrapper_1_m_axi_data_RDATA),
        .S03_AXI_rready(ri5cy_axi_wrapper_1_m_axi_data_RREADY),
        .S03_AXI_rresp(ri5cy_axi_wrapper_1_m_axi_data_RRESP),
        .S03_AXI_rvalid(ri5cy_axi_wrapper_1_m_axi_data_RVALID),
        .S03_AXI_wdata(ri5cy_axi_wrapper_1_m_axi_data_WDATA),
        .S03_AXI_wready(ri5cy_axi_wrapper_1_m_axi_data_WREADY),
        .S03_AXI_wstrb(ri5cy_axi_wrapper_1_m_axi_data_WSTRB),
        .S03_AXI_wvalid(ri5cy_axi_wrapper_1_m_axi_data_WVALID),
        .S04_AXI_araddr(ri5cy_axi_wrapper_1_m_axi_instr_ARADDR),
        .S04_AXI_arprot(ri5cy_axi_wrapper_1_m_axi_instr_ARPROT),
        .S04_AXI_arready(ri5cy_axi_wrapper_1_m_axi_instr_ARREADY),
        .S04_AXI_arvalid(ri5cy_axi_wrapper_1_m_axi_instr_ARVALID),
        .S04_AXI_awaddr(ri5cy_axi_wrapper_1_m_axi_instr_AWADDR),
        .S04_AXI_awprot(ri5cy_axi_wrapper_1_m_axi_instr_AWPROT),
        .S04_AXI_awready(ri5cy_axi_wrapper_1_m_axi_instr_AWREADY),
        .S04_AXI_awvalid(ri5cy_axi_wrapper_1_m_axi_instr_AWVALID),
        .S04_AXI_bready(ri5cy_axi_wrapper_1_m_axi_instr_BREADY),
        .S04_AXI_bresp(ri5cy_axi_wrapper_1_m_axi_instr_BRESP),
        .S04_AXI_bvalid(ri5cy_axi_wrapper_1_m_axi_instr_BVALID),
        .S04_AXI_rdata(ri5cy_axi_wrapper_1_m_axi_instr_RDATA),
        .S04_AXI_rready(ri5cy_axi_wrapper_1_m_axi_instr_RREADY),
        .S04_AXI_rresp(ri5cy_axi_wrapper_1_m_axi_instr_RRESP),
        .S04_AXI_rvalid(ri5cy_axi_wrapper_1_m_axi_instr_RVALID),
        .S04_AXI_wdata(ri5cy_axi_wrapper_1_m_axi_instr_WDATA),
        .S04_AXI_wready(ri5cy_axi_wrapper_1_m_axi_instr_WREADY),
        .S04_AXI_wstrb(ri5cy_axi_wrapper_1_m_axi_instr_WSTRB),
        .S04_AXI_wvalid(ri5cy_axi_wrapper_1_m_axi_instr_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(rst_ps7_0_100M_peripheral_aresetn));
  (* BMM_INFO_PROCESSOR = "arm > design_2 axi_bram_ctrl_0 design_2 axi_bram_ctrl_1" *) 
  (* KEEP_HIERARCHY = "YES" *) 
  design_2_processing_system7_0_1 processing_system7_0
       (.DDR_Addr(DDR_0_addr),
        .DDR_BankAddr(DDR_0_ba),
        .DDR_CAS_n(DDR_0_cas_n),
        .DDR_CKE(DDR_0_cke),
        .DDR_CS_n(DDR_0_cs_n),
        .DDR_Clk(DDR_0_ck_p),
        .DDR_Clk_n(DDR_0_ck_n),
        .DDR_DM(DDR_0_dm),
        .DDR_DQ(DDR_0_dq),
        .DDR_DQS(DDR_0_dqs_p),
        .DDR_DQS_n(DDR_0_dqs_n),
        .DDR_DRSTB(DDR_0_reset_n),
        .DDR_ODT(DDR_0_odt),
        .DDR_RAS_n(DDR_0_ras_n),
        .DDR_VRN(FIXED_IO_0_ddr_vrn),
        .DDR_VRP(FIXED_IO_0_ddr_vrp),
        .DDR_WEB(DDR_0_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .GPIO_I(1'b0),
        .MIO(FIXED_IO_0_mio),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_0_ps_clk),
        .PS_PORB(FIXED_IO_0_ps_porb),
        .PS_SRSTB(FIXED_IO_0_ps_srstb),
        .USB0_VBUS_PWRFAULT(1'b0));
  design_2_ri5cy_axi_wrapper_0_1 ri5cy_axi_wrapper_0
       (.aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(aresetn_0),
        .boot_addr_i(xlconstant_0_dout),
        .cluster_id_i(xlconstant_3_dout),
        .core_id_i(xlconstant_2_dout),
        .fetch_enable_i(xlconstant_1_dout),
        .irq_i(xlconstant_4_dout),
        .m_axi_data_araddr(ri5cy_axi_wrapper_0_m_axi_data_ARADDR),
        .m_axi_data_arprot(ri5cy_axi_wrapper_0_m_axi_data_ARPROT),
        .m_axi_data_arready(ri5cy_axi_wrapper_0_m_axi_data_ARREADY),
        .m_axi_data_arvalid(ri5cy_axi_wrapper_0_m_axi_data_ARVALID),
        .m_axi_data_awaddr(ri5cy_axi_wrapper_0_m_axi_data_AWADDR),
        .m_axi_data_awprot(ri5cy_axi_wrapper_0_m_axi_data_AWPROT),
        .m_axi_data_awready(ri5cy_axi_wrapper_0_m_axi_data_AWREADY),
        .m_axi_data_awvalid(ri5cy_axi_wrapper_0_m_axi_data_AWVALID),
        .m_axi_data_bready(ri5cy_axi_wrapper_0_m_axi_data_BREADY),
        .m_axi_data_bresp(ri5cy_axi_wrapper_0_m_axi_data_BRESP),
        .m_axi_data_bvalid(ri5cy_axi_wrapper_0_m_axi_data_BVALID),
        .m_axi_data_rdata(ri5cy_axi_wrapper_0_m_axi_data_RDATA),
        .m_axi_data_rready(ri5cy_axi_wrapper_0_m_axi_data_RREADY),
        .m_axi_data_rresp(ri5cy_axi_wrapper_0_m_axi_data_RRESP),
        .m_axi_data_rvalid(ri5cy_axi_wrapper_0_m_axi_data_RVALID),
        .m_axi_data_wdata(ri5cy_axi_wrapper_0_m_axi_data_WDATA),
        .m_axi_data_wready(ri5cy_axi_wrapper_0_m_axi_data_WREADY),
        .m_axi_data_wstrb(ri5cy_axi_wrapper_0_m_axi_data_WSTRB),
        .m_axi_data_wvalid(ri5cy_axi_wrapper_0_m_axi_data_WVALID),
        .m_axi_instr_araddr(ri5cy_axi_wrapper_0_m_axi_instr_ARADDR),
        .m_axi_instr_arprot(ri5cy_axi_wrapper_0_m_axi_instr_ARPROT),
        .m_axi_instr_arready(ri5cy_axi_wrapper_0_m_axi_instr_ARREADY),
        .m_axi_instr_arvalid(ri5cy_axi_wrapper_0_m_axi_instr_ARVALID),
        .m_axi_instr_awaddr(ri5cy_axi_wrapper_0_m_axi_instr_AWADDR),
        .m_axi_instr_awprot(ri5cy_axi_wrapper_0_m_axi_instr_AWPROT),
        .m_axi_instr_awready(ri5cy_axi_wrapper_0_m_axi_instr_AWREADY),
        .m_axi_instr_awvalid(ri5cy_axi_wrapper_0_m_axi_instr_AWVALID),
        .m_axi_instr_bready(ri5cy_axi_wrapper_0_m_axi_instr_BREADY),
        .m_axi_instr_bresp(ri5cy_axi_wrapper_0_m_axi_instr_BRESP),
        .m_axi_instr_bvalid(ri5cy_axi_wrapper_0_m_axi_instr_BVALID),
        .m_axi_instr_rdata(ri5cy_axi_wrapper_0_m_axi_instr_RDATA),
        .m_axi_instr_rready(ri5cy_axi_wrapper_0_m_axi_instr_RREADY),
        .m_axi_instr_rresp(ri5cy_axi_wrapper_0_m_axi_instr_RRESP),
        .m_axi_instr_rvalid(ri5cy_axi_wrapper_0_m_axi_instr_RVALID),
        .m_axi_instr_wdata(ri5cy_axi_wrapper_0_m_axi_instr_WDATA),
        .m_axi_instr_wready(ri5cy_axi_wrapper_0_m_axi_instr_WREADY),
        .m_axi_instr_wstrb(ri5cy_axi_wrapper_0_m_axi_instr_WSTRB),
        .m_axi_instr_wvalid(ri5cy_axi_wrapper_0_m_axi_instr_WVALID));
  design_2_ri5cy_axi_wrapper_0_2 ri5cy_axi_wrapper_1
       (.aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(aresetn_0),
        .boot_addr_i(xlconstant_0_dout),
        .cluster_id_i(xlconstant_3_dout),
        .core_id_i(xlconstant_5_dout),
        .fetch_enable_i(xlconstant_1_dout),
        .irq_i(xlconstant_4_dout),
        .m_axi_data_araddr(ri5cy_axi_wrapper_1_m_axi_data_ARADDR),
        .m_axi_data_arprot(ri5cy_axi_wrapper_1_m_axi_data_ARPROT),
        .m_axi_data_arready(ri5cy_axi_wrapper_1_m_axi_data_ARREADY),
        .m_axi_data_arvalid(ri5cy_axi_wrapper_1_m_axi_data_ARVALID),
        .m_axi_data_awaddr(ri5cy_axi_wrapper_1_m_axi_data_AWADDR),
        .m_axi_data_awprot(ri5cy_axi_wrapper_1_m_axi_data_AWPROT),
        .m_axi_data_awready(ri5cy_axi_wrapper_1_m_axi_data_AWREADY),
        .m_axi_data_awvalid(ri5cy_axi_wrapper_1_m_axi_data_AWVALID),
        .m_axi_data_bready(ri5cy_axi_wrapper_1_m_axi_data_BREADY),
        .m_axi_data_bresp(ri5cy_axi_wrapper_1_m_axi_data_BRESP),
        .m_axi_data_bvalid(ri5cy_axi_wrapper_1_m_axi_data_BVALID),
        .m_axi_data_rdata(ri5cy_axi_wrapper_1_m_axi_data_RDATA),
        .m_axi_data_rready(ri5cy_axi_wrapper_1_m_axi_data_RREADY),
        .m_axi_data_rresp(ri5cy_axi_wrapper_1_m_axi_data_RRESP),
        .m_axi_data_rvalid(ri5cy_axi_wrapper_1_m_axi_data_RVALID),
        .m_axi_data_wdata(ri5cy_axi_wrapper_1_m_axi_data_WDATA),
        .m_axi_data_wready(ri5cy_axi_wrapper_1_m_axi_data_WREADY),
        .m_axi_data_wstrb(ri5cy_axi_wrapper_1_m_axi_data_WSTRB),
        .m_axi_data_wvalid(ri5cy_axi_wrapper_1_m_axi_data_WVALID),
        .m_axi_instr_araddr(ri5cy_axi_wrapper_1_m_axi_instr_ARADDR),
        .m_axi_instr_arprot(ri5cy_axi_wrapper_1_m_axi_instr_ARPROT),
        .m_axi_instr_arready(ri5cy_axi_wrapper_1_m_axi_instr_ARREADY),
        .m_axi_instr_arvalid(ri5cy_axi_wrapper_1_m_axi_instr_ARVALID),
        .m_axi_instr_awaddr(ri5cy_axi_wrapper_1_m_axi_instr_AWADDR),
        .m_axi_instr_awprot(ri5cy_axi_wrapper_1_m_axi_instr_AWPROT),
        .m_axi_instr_awready(ri5cy_axi_wrapper_1_m_axi_instr_AWREADY),
        .m_axi_instr_awvalid(ri5cy_axi_wrapper_1_m_axi_instr_AWVALID),
        .m_axi_instr_bready(ri5cy_axi_wrapper_1_m_axi_instr_BREADY),
        .m_axi_instr_bresp(ri5cy_axi_wrapper_1_m_axi_instr_BRESP),
        .m_axi_instr_bvalid(ri5cy_axi_wrapper_1_m_axi_instr_BVALID),
        .m_axi_instr_rdata(ri5cy_axi_wrapper_1_m_axi_instr_RDATA),
        .m_axi_instr_rready(ri5cy_axi_wrapper_1_m_axi_instr_RREADY),
        .m_axi_instr_rresp(ri5cy_axi_wrapper_1_m_axi_instr_RRESP),
        .m_axi_instr_rvalid(ri5cy_axi_wrapper_1_m_axi_instr_RVALID),
        .m_axi_instr_wdata(ri5cy_axi_wrapper_1_m_axi_instr_WDATA),
        .m_axi_instr_wready(ri5cy_axi_wrapper_1_m_axi_instr_WREADY),
        .m_axi_instr_wstrb(ri5cy_axi_wrapper_1_m_axi_instr_WSTRB),
        .m_axi_instr_wvalid(ri5cy_axi_wrapper_1_m_axi_instr_WVALID));
  design_2_rst_ps7_0_100M_0 rst_ps7_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  design_2_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_2_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_2_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  design_2_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  design_2_xlconstant_4_0 xlconstant_4
       (.dout(xlconstant_4_dout));
  design_2_xlconstant_2_1 xlconstant_5
       (.dout(xlconstant_5_dout));
endmodule
