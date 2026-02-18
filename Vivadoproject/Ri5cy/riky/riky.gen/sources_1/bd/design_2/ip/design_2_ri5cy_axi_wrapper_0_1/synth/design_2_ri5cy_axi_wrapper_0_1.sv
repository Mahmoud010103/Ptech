// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:ri5cy_axi_wrapper:1.0
// IP Revision: 4

(* X_CORE_INFO = "ri5cy_axi_wrapper,Vivado 2025.2" *)
(* CHECK_LICENSE_TYPE = "design_2_ri5cy_axi_wrapper_0_1,ri5cy_axi_wrapper,{}" *)
(* CORE_GENERATION_INFO = "design_2_ri5cy_axi_wrapper_0_1,ri5cy_axi_wrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=ri5cy_axi_wrapper,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,N_EXT_PERF_COUNTERS=0,INSTR_RDATA_WIDTH=32,C_S_AXI_INSTR_ADDR_WIDTH=32,C_S_AXI_INSTR_DATA_WIDTH=32,C_S_AXI_DATA_ADDR_WIDTH=32,C_S_AXI_DATA_DATA_WIDTH=32}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_2_ri5cy_axi_wrapper_0_1 (
  aclk,
  aresetn,
  boot_addr_i,
  core_id_i,
  cluster_id_i,
  m_axi_instr_awaddr,
  m_axi_instr_awprot,
  m_axi_instr_awvalid,
  m_axi_instr_awready,
  m_axi_instr_wdata,
  m_axi_instr_wstrb,
  m_axi_instr_wvalid,
  m_axi_instr_wready,
  m_axi_instr_bresp,
  m_axi_instr_bvalid,
  m_axi_instr_bready,
  m_axi_instr_araddr,
  m_axi_instr_arprot,
  m_axi_instr_arvalid,
  m_axi_instr_arready,
  m_axi_instr_rdata,
  m_axi_instr_rresp,
  m_axi_instr_rvalid,
  m_axi_instr_rready,
  m_axi_data_awaddr,
  m_axi_data_awprot,
  m_axi_data_awvalid,
  m_axi_data_awready,
  m_axi_data_wdata,
  m_axi_data_wstrb,
  m_axi_data_wvalid,
  m_axi_data_wready,
  m_axi_data_bresp,
  m_axi_data_bvalid,
  m_axi_data_bready,
  m_axi_data_araddr,
  m_axi_data_arprot,
  m_axi_data_arvalid,
  m_axi_data_arready,
  m_axi_data_rdata,
  m_axi_data_rresp,
  m_axi_data_rvalid,
  m_axi_data_rready,
  irq_i,
  core_busy_o,
  fetch_enable_i
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axi_data:m_axi_instr, ASSOCIATED_RESET aresetn, FREQ_HZ 38461540, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *)
input wire aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire aresetn;
input wire [31 : 0] boot_addr_i;
input wire [3 : 0] core_id_i;
input wire [5 : 0] cluster_id_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr AWADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_instr, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 38461540, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_2_processing_system7_0_1_FCLK_CLK0, NUM_READ_THR\
EADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire [31 : 0] m_axi_instr_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr AWPROT" *)
output wire [2 : 0] m_axi_instr_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr AWVALID" *)
output wire m_axi_instr_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr AWREADY" *)
input wire m_axi_instr_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr WDATA" *)
output wire [31 : 0] m_axi_instr_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr WSTRB" *)
output wire [3 : 0] m_axi_instr_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr WVALID" *)
output wire m_axi_instr_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr WREADY" *)
input wire m_axi_instr_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr BRESP" *)
input wire [1 : 0] m_axi_instr_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr BVALID" *)
input wire m_axi_instr_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr BREADY" *)
output wire m_axi_instr_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr ARADDR" *)
output wire [31 : 0] m_axi_instr_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr ARPROT" *)
output wire [2 : 0] m_axi_instr_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr ARVALID" *)
output wire m_axi_instr_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr ARREADY" *)
input wire m_axi_instr_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr RDATA" *)
input wire [31 : 0] m_axi_instr_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr RRESP" *)
input wire [1 : 0] m_axi_instr_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr RVALID" *)
input wire m_axi_instr_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_instr RREADY" *)
output wire m_axi_instr_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_data, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 38461540, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_2_processing_system7_0_1_FCLK_CLK0, NUM_READ_THRE\
ADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire [31 : 0] m_axi_data_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWPROT" *)
output wire [2 : 0] m_axi_data_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWVALID" *)
output wire m_axi_data_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data AWREADY" *)
input wire m_axi_data_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data WDATA" *)
output wire [31 : 0] m_axi_data_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data WSTRB" *)
output wire [3 : 0] m_axi_data_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data WVALID" *)
output wire m_axi_data_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data WREADY" *)
input wire m_axi_data_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data BRESP" *)
input wire [1 : 0] m_axi_data_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data BVALID" *)
input wire m_axi_data_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data BREADY" *)
output wire m_axi_data_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARADDR" *)
output wire [31 : 0] m_axi_data_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARPROT" *)
output wire [2 : 0] m_axi_data_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARVALID" *)
output wire m_axi_data_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data ARREADY" *)
input wire m_axi_data_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RDATA" *)
input wire [31 : 0] m_axi_data_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RRESP" *)
input wire [1 : 0] m_axi_data_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RVALID" *)
input wire m_axi_data_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_data RREADY" *)
output wire m_axi_data_rready;
input wire [31 : 0] irq_i;
output wire core_busy_o;
input wire fetch_enable_i;

  ri5cy_axi_wrapper #(
    .N_EXT_PERF_COUNTERS(0),
    .INSTR_RDATA_WIDTH(32),
    .C_S_AXI_INSTR_ADDR_WIDTH(32),
    .C_S_AXI_INSTR_DATA_WIDTH(32),
    .C_S_AXI_DATA_ADDR_WIDTH(32),
    .C_S_AXI_DATA_DATA_WIDTH(32)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .boot_addr_i(boot_addr_i),
    .core_id_i(core_id_i),
    .cluster_id_i(cluster_id_i),
    .m_axi_instr_awaddr(m_axi_instr_awaddr),
    .m_axi_instr_awprot(m_axi_instr_awprot),
    .m_axi_instr_awvalid(m_axi_instr_awvalid),
    .m_axi_instr_awready(m_axi_instr_awready),
    .m_axi_instr_wdata(m_axi_instr_wdata),
    .m_axi_instr_wstrb(m_axi_instr_wstrb),
    .m_axi_instr_wvalid(m_axi_instr_wvalid),
    .m_axi_instr_wready(m_axi_instr_wready),
    .m_axi_instr_bresp(m_axi_instr_bresp),
    .m_axi_instr_bvalid(m_axi_instr_bvalid),
    .m_axi_instr_bready(m_axi_instr_bready),
    .m_axi_instr_araddr(m_axi_instr_araddr),
    .m_axi_instr_arprot(m_axi_instr_arprot),
    .m_axi_instr_arvalid(m_axi_instr_arvalid),
    .m_axi_instr_arready(m_axi_instr_arready),
    .m_axi_instr_rdata(m_axi_instr_rdata),
    .m_axi_instr_rresp(m_axi_instr_rresp),
    .m_axi_instr_rvalid(m_axi_instr_rvalid),
    .m_axi_instr_rready(m_axi_instr_rready),
    .m_axi_data_awaddr(m_axi_data_awaddr),
    .m_axi_data_awprot(m_axi_data_awprot),
    .m_axi_data_awvalid(m_axi_data_awvalid),
    .m_axi_data_awready(m_axi_data_awready),
    .m_axi_data_wdata(m_axi_data_wdata),
    .m_axi_data_wstrb(m_axi_data_wstrb),
    .m_axi_data_wvalid(m_axi_data_wvalid),
    .m_axi_data_wready(m_axi_data_wready),
    .m_axi_data_bresp(m_axi_data_bresp),
    .m_axi_data_bvalid(m_axi_data_bvalid),
    .m_axi_data_bready(m_axi_data_bready),
    .m_axi_data_araddr(m_axi_data_araddr),
    .m_axi_data_arprot(m_axi_data_arprot),
    .m_axi_data_arvalid(m_axi_data_arvalid),
    .m_axi_data_arready(m_axi_data_arready),
    .m_axi_data_rdata(m_axi_data_rdata),
    .m_axi_data_rresp(m_axi_data_rresp),
    .m_axi_data_rvalid(m_axi_data_rvalid),
    .m_axi_data_rready(m_axi_data_rready),
    .irq_i(irq_i),
    .core_busy_o(core_busy_o),
    .fetch_enable_i(fetch_enable_i)
  );
endmodule
