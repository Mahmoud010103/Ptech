//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Sat Nov 29 13:37:56 2025
//Host        : DESKTOP-E8CT5SI running 64-bit major release  (build 9200)
//Command     : generate_target ri5cy_ai_platform.bd
//Design      : ri5cy_ai_platform
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ri5cy_ai_platform,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ri5cy_ai_platform,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=27,da_board_cnt=11,da_bram_cntlr_cnt=8,da_clkrst_cnt=1,da_ps7_cnt=2,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ri5cy_ai_platform.hwdef" *) 
module ri5cy_ai_platform
   (leds_8bits_tri_o,
    reset_rtl,
    sys_clock_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 leds_8bits TRI_O" *) (* X_INTERFACE_MODE = "Master" *) output [7:0]leds_8bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK_0, CLK_DOMAIN ri5cy_ai_platform_sys_clock_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock_0;

  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [12:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  wire [12:0]axi_smc_1_M00_AXI_ARADDR;
  wire [1:0]axi_smc_1_M00_AXI_ARBURST;
  wire [3:0]axi_smc_1_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_1_M00_AXI_ARLEN;
  wire [0:0]axi_smc_1_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_1_M00_AXI_ARPROT;
  wire axi_smc_1_M00_AXI_ARREADY;
  wire [2:0]axi_smc_1_M00_AXI_ARSIZE;
  wire axi_smc_1_M00_AXI_ARVALID;
  wire [12:0]axi_smc_1_M00_AXI_AWADDR;
  wire [1:0]axi_smc_1_M00_AXI_AWBURST;
  wire [3:0]axi_smc_1_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_1_M00_AXI_AWLEN;
  wire [0:0]axi_smc_1_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_1_M00_AXI_AWPROT;
  wire axi_smc_1_M00_AXI_AWREADY;
  wire [2:0]axi_smc_1_M00_AXI_AWSIZE;
  wire axi_smc_1_M00_AXI_AWVALID;
  wire axi_smc_1_M00_AXI_BREADY;
  wire [1:0]axi_smc_1_M00_AXI_BRESP;
  wire axi_smc_1_M00_AXI_BVALID;
  wire [31:0]axi_smc_1_M00_AXI_RDATA;
  wire axi_smc_1_M00_AXI_RLAST;
  wire axi_smc_1_M00_AXI_RREADY;
  wire [1:0]axi_smc_1_M00_AXI_RRESP;
  wire axi_smc_1_M00_AXI_RVALID;
  wire [31:0]axi_smc_1_M00_AXI_WDATA;
  wire axi_smc_1_M00_AXI_WLAST;
  wire axi_smc_1_M00_AXI_WREADY;
  wire [3:0]axi_smc_1_M00_AXI_WSTRB;
  wire axi_smc_1_M00_AXI_WVALID;
  wire [8:0]axi_smc_1_M01_AXI_ARADDR;
  wire axi_smc_1_M01_AXI_ARREADY;
  wire axi_smc_1_M01_AXI_ARVALID;
  wire [8:0]axi_smc_1_M01_AXI_AWADDR;
  wire axi_smc_1_M01_AXI_AWREADY;
  wire axi_smc_1_M01_AXI_AWVALID;
  wire axi_smc_1_M01_AXI_BREADY;
  wire [1:0]axi_smc_1_M01_AXI_BRESP;
  wire axi_smc_1_M01_AXI_BVALID;
  wire [31:0]axi_smc_1_M01_AXI_RDATA;
  wire axi_smc_1_M01_AXI_RREADY;
  wire [1:0]axi_smc_1_M01_AXI_RRESP;
  wire axi_smc_1_M01_AXI_RVALID;
  wire [31:0]axi_smc_1_M01_AXI_WDATA;
  wire axi_smc_1_M01_AXI_WREADY;
  wire [3:0]axi_smc_1_M01_AXI_WSTRB;
  wire axi_smc_1_M01_AXI_WVALID;
  wire [12:0]axi_smc_1_M02_AXI_ARADDR;
  wire [1:0]axi_smc_1_M02_AXI_ARBURST;
  wire [3:0]axi_smc_1_M02_AXI_ARCACHE;
  wire [7:0]axi_smc_1_M02_AXI_ARLEN;
  wire [0:0]axi_smc_1_M02_AXI_ARLOCK;
  wire [2:0]axi_smc_1_M02_AXI_ARPROT;
  wire axi_smc_1_M02_AXI_ARREADY;
  wire [2:0]axi_smc_1_M02_AXI_ARSIZE;
  wire axi_smc_1_M02_AXI_ARVALID;
  wire [12:0]axi_smc_1_M02_AXI_AWADDR;
  wire [1:0]axi_smc_1_M02_AXI_AWBURST;
  wire [3:0]axi_smc_1_M02_AXI_AWCACHE;
  wire [7:0]axi_smc_1_M02_AXI_AWLEN;
  wire [0:0]axi_smc_1_M02_AXI_AWLOCK;
  wire [2:0]axi_smc_1_M02_AXI_AWPROT;
  wire axi_smc_1_M02_AXI_AWREADY;
  wire [2:0]axi_smc_1_M02_AXI_AWSIZE;
  wire axi_smc_1_M02_AXI_AWVALID;
  wire axi_smc_1_M02_AXI_BREADY;
  wire [1:0]axi_smc_1_M02_AXI_BRESP;
  wire axi_smc_1_M02_AXI_BVALID;
  wire [31:0]axi_smc_1_M02_AXI_RDATA;
  wire axi_smc_1_M02_AXI_RLAST;
  wire axi_smc_1_M02_AXI_RREADY;
  wire [1:0]axi_smc_1_M02_AXI_RRESP;
  wire axi_smc_1_M02_AXI_RVALID;
  wire [31:0]axi_smc_1_M02_AXI_WDATA;
  wire axi_smc_1_M02_AXI_WLAST;
  wire axi_smc_1_M02_AXI_WREADY;
  wire [3:0]axi_smc_1_M02_AXI_WSTRB;
  wire axi_smc_1_M02_AXI_WVALID;
  wire clk_wiz_0_clk_out1;
  wire [7:0]leds_8bits_tri_o;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire reset_rtl;
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
  wire sys_clock_0;
  wire [0:0]xlconstant_0_dout;
  wire [31:0]xlconstant_1_dout;
  wire [5:0]xlconstant_2_dout;
  wire [31:0]xlconstant_3_dout;
  wire [3:0]xlconstant_4_dout;

  ri5cy_ai_platform_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_smc_1_M02_AXI_ARADDR),
        .s_axi_arburst(axi_smc_1_M02_AXI_ARBURST),
        .s_axi_arcache(axi_smc_1_M02_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arlen(axi_smc_1_M02_AXI_ARLEN),
        .s_axi_arlock(axi_smc_1_M02_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_1_M02_AXI_ARPROT),
        .s_axi_arready(axi_smc_1_M02_AXI_ARREADY),
        .s_axi_arsize(axi_smc_1_M02_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_1_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_1_M02_AXI_AWADDR),
        .s_axi_awburst(axi_smc_1_M02_AXI_AWBURST),
        .s_axi_awcache(axi_smc_1_M02_AXI_AWCACHE),
        .s_axi_awlen(axi_smc_1_M02_AXI_AWLEN),
        .s_axi_awlock(axi_smc_1_M02_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_1_M02_AXI_AWPROT),
        .s_axi_awready(axi_smc_1_M02_AXI_AWREADY),
        .s_axi_awsize(axi_smc_1_M02_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_1_M02_AXI_AWVALID),
        .s_axi_bready(axi_smc_1_M02_AXI_BREADY),
        .s_axi_bresp(axi_smc_1_M02_AXI_BRESP),
        .s_axi_bvalid(axi_smc_1_M02_AXI_BVALID),
        .s_axi_rdata(axi_smc_1_M02_AXI_RDATA),
        .s_axi_rlast(axi_smc_1_M02_AXI_RLAST),
        .s_axi_rready(axi_smc_1_M02_AXI_RREADY),
        .s_axi_rresp(axi_smc_1_M02_AXI_RRESP),
        .s_axi_rvalid(axi_smc_1_M02_AXI_RVALID),
        .s_axi_wdata(axi_smc_1_M02_AXI_WDATA),
        .s_axi_wlast(axi_smc_1_M02_AXI_WLAST),
        .s_axi_wready(axi_smc_1_M02_AXI_WREADY),
        .s_axi_wstrb(axi_smc_1_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_1_M02_AXI_WVALID));
  ri5cy_ai_platform_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  ri5cy_ai_platform_axi_bram_ctrl_1_0 axi_bram_ctrl_1
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_smc_1_M00_AXI_ARADDR),
        .s_axi_arburst(axi_smc_1_M00_AXI_ARBURST),
        .s_axi_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arlen(axi_smc_1_M00_AXI_ARLEN),
        .s_axi_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_1_M00_AXI_ARPROT),
        .s_axi_arready(axi_smc_1_M00_AXI_ARREADY),
        .s_axi_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .s_axi_awburst(axi_smc_1_M00_AXI_AWBURST),
        .s_axi_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .s_axi_awlen(axi_smc_1_M00_AXI_AWLEN),
        .s_axi_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_1_M00_AXI_AWPROT),
        .s_axi_awready(axi_smc_1_M00_AXI_AWREADY),
        .s_axi_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_1_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_1_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_1_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_1_M00_AXI_RDATA),
        .s_axi_rlast(axi_smc_1_M00_AXI_RLAST),
        .s_axi_rready(axi_smc_1_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_1_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_1_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_1_M00_AXI_WDATA),
        .s_axi_wlast(axi_smc_1_M00_AXI_WLAST),
        .s_axi_wready(axi_smc_1_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_1_M00_AXI_WVALID));
  ri5cy_ai_platform_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_o(leds_8bits_tri_o),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_smc_1_M01_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(axi_smc_1_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_1_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_1_M01_AXI_AWADDR),
        .s_axi_awready(axi_smc_1_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_1_M01_AXI_AWVALID),
        .s_axi_bready(axi_smc_1_M01_AXI_BREADY),
        .s_axi_bresp(axi_smc_1_M01_AXI_BRESP),
        .s_axi_bvalid(axi_smc_1_M01_AXI_BVALID),
        .s_axi_rdata(axi_smc_1_M01_AXI_RDATA),
        .s_axi_rready(axi_smc_1_M01_AXI_RREADY),
        .s_axi_rresp(axi_smc_1_M01_AXI_RRESP),
        .s_axi_rvalid(axi_smc_1_M01_AXI_RVALID),
        .s_axi_wdata(axi_smc_1_M01_AXI_WDATA),
        .s_axi_wready(axi_smc_1_M01_AXI_WREADY),
        .s_axi_wstrb(axi_smc_1_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_1_M01_AXI_WVALID));
  ri5cy_ai_platform_axi_smc_1_1 axi_smc_1
       (.M00_AXI_araddr(axi_smc_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_1_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_smc_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_1_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_smc_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_1_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_1_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_smc_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_smc_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_1_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_smc_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_smc_1_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_1_M01_AXI_RDATA),
        .M01_AXI_rready(axi_smc_1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_1_M01_AXI_WDATA),
        .M01_AXI_wready(axi_smc_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_1_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_smc_1_M02_AXI_ARADDR),
        .M02_AXI_arburst(axi_smc_1_M02_AXI_ARBURST),
        .M02_AXI_arcache(axi_smc_1_M02_AXI_ARCACHE),
        .M02_AXI_arlen(axi_smc_1_M02_AXI_ARLEN),
        .M02_AXI_arlock(axi_smc_1_M02_AXI_ARLOCK),
        .M02_AXI_arprot(axi_smc_1_M02_AXI_ARPROT),
        .M02_AXI_arready(axi_smc_1_M02_AXI_ARREADY),
        .M02_AXI_arsize(axi_smc_1_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(axi_smc_1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_1_M02_AXI_AWADDR),
        .M02_AXI_awburst(axi_smc_1_M02_AXI_AWBURST),
        .M02_AXI_awcache(axi_smc_1_M02_AXI_AWCACHE),
        .M02_AXI_awlen(axi_smc_1_M02_AXI_AWLEN),
        .M02_AXI_awlock(axi_smc_1_M02_AXI_AWLOCK),
        .M02_AXI_awprot(axi_smc_1_M02_AXI_AWPROT),
        .M02_AXI_awready(axi_smc_1_M02_AXI_AWREADY),
        .M02_AXI_awsize(axi_smc_1_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(axi_smc_1_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_1_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_1_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_1_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_1_M02_AXI_RDATA),
        .M02_AXI_rlast(axi_smc_1_M02_AXI_RLAST),
        .M02_AXI_rready(axi_smc_1_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_1_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_1_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_1_M02_AXI_WDATA),
        .M02_AXI_wlast(axi_smc_1_M02_AXI_WLAST),
        .M02_AXI_wready(axi_smc_1_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_smc_1_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_smc_1_M02_AXI_WVALID),
        .S00_AXI_araddr(ri5cy_axi_wrapper_0_m_axi_instr_ARADDR),
        .S00_AXI_arprot(ri5cy_axi_wrapper_0_m_axi_instr_ARPROT),
        .S00_AXI_arready(ri5cy_axi_wrapper_0_m_axi_instr_ARREADY),
        .S00_AXI_arvalid(ri5cy_axi_wrapper_0_m_axi_instr_ARVALID),
        .S00_AXI_awaddr(ri5cy_axi_wrapper_0_m_axi_instr_AWADDR),
        .S00_AXI_awprot(ri5cy_axi_wrapper_0_m_axi_instr_AWPROT),
        .S00_AXI_awready(ri5cy_axi_wrapper_0_m_axi_instr_AWREADY),
        .S00_AXI_awvalid(ri5cy_axi_wrapper_0_m_axi_instr_AWVALID),
        .S00_AXI_bready(ri5cy_axi_wrapper_0_m_axi_instr_BREADY),
        .S00_AXI_bresp(ri5cy_axi_wrapper_0_m_axi_instr_BRESP),
        .S00_AXI_bvalid(ri5cy_axi_wrapper_0_m_axi_instr_BVALID),
        .S00_AXI_rdata(ri5cy_axi_wrapper_0_m_axi_instr_RDATA),
        .S00_AXI_rready(ri5cy_axi_wrapper_0_m_axi_instr_RREADY),
        .S00_AXI_rresp(ri5cy_axi_wrapper_0_m_axi_instr_RRESP),
        .S00_AXI_rvalid(ri5cy_axi_wrapper_0_m_axi_instr_RVALID),
        .S00_AXI_wdata(ri5cy_axi_wrapper_0_m_axi_instr_WDATA),
        .S00_AXI_wready(ri5cy_axi_wrapper_0_m_axi_instr_WREADY),
        .S00_AXI_wstrb(ri5cy_axi_wrapper_0_m_axi_instr_WSTRB),
        .S00_AXI_wvalid(ri5cy_axi_wrapper_0_m_axi_instr_WVALID),
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
        .aclk(clk_wiz_0_clk_out1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  ri5cy_ai_platform_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_1_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_1_BRAM_PORTA_WE));
  ri5cy_ai_platform_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(sys_clock_0),
        .clk_out1(clk_wiz_0_clk_out1));
  ri5cy_ai_platform_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_rtl),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  ri5cy_ai_platform_ri5cy_axi_wrapper_0_3 ri5cy_axi_wrapper_0
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .boot_addr_i(xlconstant_3_dout),
        .cluster_id_i(xlconstant_2_dout),
        .core_id_i(xlconstant_4_dout),
        .fetch_enable_i(xlconstant_0_dout),
        .irq_i(xlconstant_1_dout),
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
  ri5cy_ai_platform_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  ri5cy_ai_platform_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  ri5cy_ai_platform_xlconstant_0_2 xlconstant_2
       (.dout(xlconstant_2_dout));
  ri5cy_ai_platform_xlconstant_2_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  ri5cy_ai_platform_xlconstant_2_1 xlconstant_4
       (.dout(xlconstant_4_dout));
endmodule
