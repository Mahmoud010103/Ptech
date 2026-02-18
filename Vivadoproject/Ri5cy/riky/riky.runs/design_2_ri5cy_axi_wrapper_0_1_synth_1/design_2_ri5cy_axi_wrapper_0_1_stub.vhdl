-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Tue Jan 20 14:40:10 2026
-- Host        : DESKTOP-E8CT5SI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_ri5cy_axi_wrapper_0_1_stub.vhdl
-- Design      : design_2_ri5cy_axi_wrapper_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    boot_addr_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    core_id_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cluster_id_i : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_instr_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_instr_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_instr_awvalid : out STD_LOGIC;
    m_axi_instr_awready : in STD_LOGIC;
    m_axi_instr_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_instr_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_instr_wvalid : out STD_LOGIC;
    m_axi_instr_wready : in STD_LOGIC;
    m_axi_instr_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_instr_bvalid : in STD_LOGIC;
    m_axi_instr_bready : out STD_LOGIC;
    m_axi_instr_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_instr_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_instr_arvalid : out STD_LOGIC;
    m_axi_instr_arready : in STD_LOGIC;
    m_axi_instr_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_instr_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_instr_rvalid : in STD_LOGIC;
    m_axi_instr_rready : out STD_LOGIC;
    m_axi_data_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_data_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_data_awvalid : out STD_LOGIC;
    m_axi_data_awready : in STD_LOGIC;
    m_axi_data_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_data_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_data_wvalid : out STD_LOGIC;
    m_axi_data_wready : in STD_LOGIC;
    m_axi_data_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_data_bvalid : in STD_LOGIC;
    m_axi_data_bready : out STD_LOGIC;
    m_axi_data_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_data_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_data_arvalid : out STD_LOGIC;
    m_axi_data_arready : in STD_LOGIC;
    m_axi_data_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_data_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_data_rvalid : in STD_LOGIC;
    m_axi_data_rready : out STD_LOGIC;
    irq_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    core_busy_o : out STD_LOGIC;
    fetch_enable_i : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_2_ri5cy_axi_wrapper_0_1,ri5cy_axi_wrapper,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_2_ri5cy_axi_wrapper_0_1,ri5cy_axi_wrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=ri5cy_axi_wrapper,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,N_EXT_PERF_COUNTERS=0,INSTR_RDATA_WIDTH=32,C_S_AXI_INSTR_ADDR_WIDTH=32,C_S_AXI_INSTR_DATA_WIDTH=32,C_S_AXI_DATA_ADDR_WIDTH=32,C_S_AXI_DATA_DATA_WIDTH=32}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,boot_addr_i[31:0],core_id_i[3:0],cluster_id_i[5:0],m_axi_instr_awaddr[31:0],m_axi_instr_awprot[2:0],m_axi_instr_awvalid,m_axi_instr_awready,m_axi_instr_wdata[31:0],m_axi_instr_wstrb[3:0],m_axi_instr_wvalid,m_axi_instr_wready,m_axi_instr_bresp[1:0],m_axi_instr_bvalid,m_axi_instr_bready,m_axi_instr_araddr[31:0],m_axi_instr_arprot[2:0],m_axi_instr_arvalid,m_axi_instr_arready,m_axi_instr_rdata[31:0],m_axi_instr_rresp[1:0],m_axi_instr_rvalid,m_axi_instr_rready,m_axi_data_awaddr[31:0],m_axi_data_awprot[2:0],m_axi_data_awvalid,m_axi_data_awready,m_axi_data_wdata[31:0],m_axi_data_wstrb[3:0],m_axi_data_wvalid,m_axi_data_wready,m_axi_data_bresp[1:0],m_axi_data_bvalid,m_axi_data_bready,m_axi_data_araddr[31:0],m_axi_data_arprot[2:0],m_axi_data_arvalid,m_axi_data_arready,m_axi_data_rdata[31:0],m_axi_data_rresp[1:0],m_axi_data_rvalid,m_axi_data_rready,irq_i[31:0],core_busy_o,fetch_enable_i";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axi_data:m_axi_instr, ASSOCIATED_RESET aresetn, FREQ_HZ 38461540, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_instr_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr AWADDR";
  attribute X_INTERFACE_MODE of m_axi_instr_awaddr : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axi_instr_awaddr : signal is "XIL_INTERFACENAME m_axi_instr, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 38461540, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_2_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_instr_awprot : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr AWPROT";
  attribute X_INTERFACE_INFO of m_axi_instr_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr AWVALID";
  attribute X_INTERFACE_INFO of m_axi_instr_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr AWREADY";
  attribute X_INTERFACE_INFO of m_axi_instr_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr WDATA";
  attribute X_INTERFACE_INFO of m_axi_instr_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr WSTRB";
  attribute X_INTERFACE_INFO of m_axi_instr_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr WVALID";
  attribute X_INTERFACE_INFO of m_axi_instr_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr WREADY";
  attribute X_INTERFACE_INFO of m_axi_instr_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr BRESP";
  attribute X_INTERFACE_INFO of m_axi_instr_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr BVALID";
  attribute X_INTERFACE_INFO of m_axi_instr_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr BREADY";
  attribute X_INTERFACE_INFO of m_axi_instr_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr ARADDR";
  attribute X_INTERFACE_INFO of m_axi_instr_arprot : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr ARPROT";
  attribute X_INTERFACE_INFO of m_axi_instr_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr ARVALID";
  attribute X_INTERFACE_INFO of m_axi_instr_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr ARREADY";
  attribute X_INTERFACE_INFO of m_axi_instr_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr RDATA";
  attribute X_INTERFACE_INFO of m_axi_instr_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr RRESP";
  attribute X_INTERFACE_INFO of m_axi_instr_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr RVALID";
  attribute X_INTERFACE_INFO of m_axi_instr_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi_instr RREADY";
  attribute X_INTERFACE_INFO of m_axi_data_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_data AWADDR";
  attribute X_INTERFACE_MODE of m_axi_data_awaddr : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axi_data_awaddr : signal is "XIL_INTERFACENAME m_axi_data, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 38461540, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_2_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_data_awprot : signal is "xilinx.com:interface:aximm:1.0 m_axi_data AWPROT";
  attribute X_INTERFACE_INFO of m_axi_data_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_data AWVALID";
  attribute X_INTERFACE_INFO of m_axi_data_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi_data AWREADY";
  attribute X_INTERFACE_INFO of m_axi_data_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_data WDATA";
  attribute X_INTERFACE_INFO of m_axi_data_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi_data WSTRB";
  attribute X_INTERFACE_INFO of m_axi_data_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_data WVALID";
  attribute X_INTERFACE_INFO of m_axi_data_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi_data WREADY";
  attribute X_INTERFACE_INFO of m_axi_data_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_data BRESP";
  attribute X_INTERFACE_INFO of m_axi_data_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_data BVALID";
  attribute X_INTERFACE_INFO of m_axi_data_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi_data BREADY";
  attribute X_INTERFACE_INFO of m_axi_data_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_data ARADDR";
  attribute X_INTERFACE_INFO of m_axi_data_arprot : signal is "xilinx.com:interface:aximm:1.0 m_axi_data ARPROT";
  attribute X_INTERFACE_INFO of m_axi_data_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_data ARVALID";
  attribute X_INTERFACE_INFO of m_axi_data_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi_data ARREADY";
  attribute X_INTERFACE_INFO of m_axi_data_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_data RDATA";
  attribute X_INTERFACE_INFO of m_axi_data_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_data RRESP";
  attribute X_INTERFACE_INFO of m_axi_data_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_data RVALID";
  attribute X_INTERFACE_INFO of m_axi_data_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi_data RREADY";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "ri5cy_axi_wrapper,Vivado 2025.2";
begin
end;
