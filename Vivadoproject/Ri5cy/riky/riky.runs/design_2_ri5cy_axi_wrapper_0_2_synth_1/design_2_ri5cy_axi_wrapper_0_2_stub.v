// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Jan 20 14:50:47 2026
// Host        : DESKTOP-E8CT5SI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_ri5cy_axi_wrapper_0_2_stub.v
// Design      : design_2_ri5cy_axi_wrapper_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_2_ri5cy_axi_wrapper_0_2,ri5cy_axi_wrapper,{}" *) (* CORE_GENERATION_INFO = "design_2_ri5cy_axi_wrapper_0_2,ri5cy_axi_wrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=ri5cy_axi_wrapper,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,N_EXT_PERF_COUNTERS=0,INSTR_RDATA_WIDTH=32,C_S_AXI_INSTR_ADDR_WIDTH=32,C_S_AXI_INSTR_DATA_WIDTH=32,C_S_AXI_DATA_ADDR_WIDTH=32,C_S_AXI_DATA_DATA_WIDTH=32}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "package_project" *) (* X_CORE_INFO = "ri5cy_axi_wrapper,Vivado 2025.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, boot_addr_i, core_id_i, 
  cluster_id_i, m_axi_instr_awaddr, m_axi_instr_awprot, m_axi_instr_awvalid, 
  m_axi_instr_awready, m_axi_instr_wdata, m_axi_instr_wstrb, m_axi_instr_wvalid, 
  m_axi_instr_wready, m_axi_instr_bresp, m_axi_instr_bvalid, m_axi_instr_bready, 
  m_axi_instr_araddr, m_axi_instr_arprot, m_axi_instr_arvalid, m_axi_instr_arready, 
  m_axi_instr_rdata, m_axi_instr_rresp, m_axi_instr_rvalid, m_axi_instr_rready, 
  m_axi_data_awaddr, m_axi_data_awprot, m_axi_data_awvalid, m_axi_data_awready, 
  m_axi_data_wdata, m_axi_data_wstrb, m_axi_data_wvalid, m_axi_data_wready, 
  m_axi_data_bresp, m_axi_data_bvalid, m_axi_data_bready, m_axi_data_araddr, 
  m_axi_data_arprot, m_axi_data_arvalid, m_axi_data_arready, m_axi_data_rdata, 
  m_axi_data_rresp, m_axi_data_rvalid, m_axi_data_rready, irq_i, core_busy_o, fetch_enable_i)
/* synthesis syn_black_box black_box_pad_pin="aresetn,boot_addr_i[31:0],core_id_i[3:0],cluster_id_i[5:0],m_axi_instr_awaddr[31:0],m_axi_instr_awprot[2:0],m_axi_instr_awvalid,m_axi_instr_awready,m_axi_instr_wdata[31:0],m_axi_instr_wstrb[3:0],m_axi_instr_wvalid,m_axi_instr_wready,m_axi_instr_bresp[1:0],m_axi_instr_bvalid,m_axi_instr_bready,m_axi_instr_araddr[31:0],m_axi_instr_arprot[2:0],m_axi_instr_arvalid,m_axi_instr_arready,m_axi_instr_rdata[31:0],m_axi_instr_rresp[1:0],m_axi_instr_rvalid,m_axi_instr_rready,m_axi_data_awaddr[31:0],m_axi_data_awprot[2:0],m_axi_data_awvalid,m_axi_data_awready,m_axi_data_wdata[31:0],m_axi_data_wstrb[3:0],m_axi_data_wvalid,m_axi_data_wready,m_axi_data_bresp[1:0],m_axi_data_bvalid,m_axi_data_bready,m_axi_data_araddr[31:0],m_axi_data_arprot[2:0],m_axi_data_arvalid,m_axi_data_arready,m_axi_data_rdata[31:0],m_axi_data_rresp[1:0],m_axi_data_rvalid,m_axi_data_rready,irq_i[31:0],core_busy_o,fetch_enable_i" */
/* synthesis syn_force_seq_prim="aclk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axi_data:m_axi_instr, ASSOCIATED_RESET aresetn, FREQ_HZ 38461540, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input [31:0]boot_addr_i;
  input [3:0]core_id_i;
  input [5:0]cluster_id_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr AWADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_instr, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 38461540, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_2_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]m_axi_instr_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr AWPROT" *) output [2:0]m_axi_instr_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr AWVALID" *) output m_axi_instr_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr AWREADY" *) input m_axi_instr_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr WDATA" *) output [31:0]m_axi_instr_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr WSTRB" *) output [3:0]m_axi_instr_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr WVALID" *) output m_axi_instr_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr WREADY" *) input m_axi_instr_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr BRESP" *) input [1:0]m_axi_instr_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr BVALID" *) input m_axi_instr_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr BREADY" *) output m_axi_instr_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr ARADDR" *) output [31:0]m_axi_instr_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr ARPROT" *) output [2:0]m_axi_instr_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr ARVALID" *) output m_axi_instr_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr ARREADY" *) input m_axi_instr_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr RDATA" *) input [31:0]m_axi_instr_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr RRESP" *) input [1:0]m_axi_instr_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr RVALID" *) input m_axi_instr_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr RREADY" *) output m_axi_instr_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_data, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 38461540, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_2_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]m_axi_data_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWPROT" *) output [2:0]m_axi_data_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWVALID" *) output m_axi_data_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWREADY" *) input m_axi_data_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data WDATA" *) output [31:0]m_axi_data_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data WSTRB" *) output [3:0]m_axi_data_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data WVALID" *) output m_axi_data_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data WREADY" *) input m_axi_data_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data BRESP" *) input [1:0]m_axi_data_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data BVALID" *) input m_axi_data_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data BREADY" *) output m_axi_data_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARADDR" *) output [31:0]m_axi_data_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARPROT" *) output [2:0]m_axi_data_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARVALID" *) output m_axi_data_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARREADY" *) input m_axi_data_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RDATA" *) input [31:0]m_axi_data_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RRESP" *) input [1:0]m_axi_data_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RVALID" *) input m_axi_data_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RREADY" *) output m_axi_data_rready;
  input [31:0]irq_i;
  output core_busy_o;
  input fetch_enable_i;
endmodule
