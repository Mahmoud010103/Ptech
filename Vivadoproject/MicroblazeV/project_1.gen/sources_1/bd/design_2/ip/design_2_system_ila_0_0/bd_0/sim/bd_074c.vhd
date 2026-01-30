--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_074c.bd
--Design : bd_074c
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_074c is
  port (
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_rready : in STD_LOGIC;
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_wvalid : in STD_LOGIC;
    SLOT_1_LMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    SLOT_1_LMB_addrstrobe : in STD_LOGIC;
    SLOT_1_LMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    SLOT_1_LMB_ce : in STD_LOGIC;
    SLOT_1_LMB_readdbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    SLOT_1_LMB_readstrobe : in STD_LOGIC;
    SLOT_1_LMB_ready : in STD_LOGIC;
    SLOT_1_LMB_ue : in STD_LOGIC;
    SLOT_1_LMB_wait : in STD_LOGIC;
    SLOT_1_LMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    SLOT_1_LMB_writestrobe : in STD_LOGIC;
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_074c : entity is "bd_074c,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_074c,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_074c : entity is "design_2_system_ila_0_0.hwdef";
end bd_074c;

architecture STRUCTURE of bd_074c is
  component bd_074c_ila_lib_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_074c_ila_lib_0;
  component bd_074c_g_inst_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_slot_0_axi_b_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_r_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_aw_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_ar_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    slot_0_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_awvalid : in STD_LOGIC;
    slot_0_axi_awready : in STD_LOGIC;
    slot_0_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_wvalid : in STD_LOGIC;
    slot_0_axi_wready : in STD_LOGIC;
    slot_0_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_bvalid : in STD_LOGIC;
    slot_0_axi_bready : in STD_LOGIC;
    slot_0_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    slot_0_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_arvalid : in STD_LOGIC;
    slot_0_axi_arready : in STD_LOGIC;
    slot_0_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_rvalid : in STD_LOGIC;
    slot_0_axi_rready : in STD_LOGIC;
    m_slot_0_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_slot_0_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_0_axi_awvalid : out STD_LOGIC;
    m_slot_0_axi_awready : out STD_LOGIC;
    m_slot_0_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_0_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_0_axi_wvalid : out STD_LOGIC;
    m_slot_0_axi_wready : out STD_LOGIC;
    m_slot_0_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_bvalid : out STD_LOGIC;
    m_slot_0_axi_bready : out STD_LOGIC;
    m_slot_0_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_slot_0_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_0_axi_arvalid : out STD_LOGIC;
    m_slot_0_axi_arready : out STD_LOGIC;
    m_slot_0_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_0_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_rvalid : out STD_LOGIC;
    m_slot_0_axi_rready : out STD_LOGIC
  );
  end component bd_074c_g_inst_0;
  component bd_074c_slot_0_aw_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_074c_slot_0_aw_0;
  component bd_074c_slot_0_w_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_074c_slot_0_w_0;
  component bd_074c_slot_0_b_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_074c_slot_0_b_0;
  component bd_074c_slot_0_ar_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_074c_slot_0_ar_0;
  component bd_074c_slot_0_r_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_074c_slot_0_r_0;
  signal net_slot_0_axi_ar_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_ar_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_araddr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal net_slot_0_axi_arprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_0_axi_arready : STD_LOGIC;
  signal net_slot_0_axi_arvalid : STD_LOGIC;
  signal net_slot_0_axi_aw_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_aw_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_awaddr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal net_slot_0_axi_awprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_0_axi_awready : STD_LOGIC;
  signal net_slot_0_axi_awvalid : STD_LOGIC;
  signal net_slot_0_axi_b_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_b_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_bready : STD_LOGIC;
  signal net_slot_0_axi_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_bvalid : STD_LOGIC;
  signal net_slot_0_axi_r_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_r_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_0_axi_rready : STD_LOGIC;
  signal net_slot_0_axi_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_rvalid : STD_LOGIC;
  signal net_slot_0_axi_w_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_0_axi_wready : STD_LOGIC;
  signal net_slot_0_axi_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_0_axi_wvalid : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID";
  attribute X_INTERFACE_INFO of SLOT_1_LMB_addrstrobe : signal is "xilinx.com:interface:lmb:1.0 SLOT_1_LMB ADDRSTROBE";
  attribute X_INTERFACE_INFO of SLOT_1_LMB_ce : signal is "xilinx.com:interface:lmb:1.0 SLOT_1_LMB CE";
  attribute X_INTERFACE_INFO of SLOT_1_LMB_readstrobe : signal is "xilinx.com:interface:lmb:1.0 SLOT_1_LMB READSTROBE";
  attribute X_INTERFACE_INFO of SLOT_1_LMB_ready : signal is "xilinx.com:interface:lmb:1.0 SLOT_1_LMB READY";
  attribute X_INTERFACE_INFO of SLOT_1_LMB_ue : signal is "xilinx.com:interface:lmb:1.0 SLOT_1_LMB UE";
  attribute X_INTERFACE_INFO of SLOT_1_LMB_wait : signal is "xilinx.com:interface:lmb:1.0 SLOT_1_LMB WAIT";
  attribute X_INTERFACE_INFO of SLOT_1_LMB_writestrobe : signal is "xilinx.com:interface:lmb:1.0 SLOT_1_LMB WRITESTROBE";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXI, ASSOCIATED_RESET resetn, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of SLOT_0_AXI_araddr : signal is "Monitor SlaveType";
  attribute X_INTERFACE_PARAMETER of SLOT_0_AXI_araddr : signal is "XIL_INTERFACENAME SLOT_0_AXI, ADDR_WIDTH 9, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN /clk_wiz_0_clk_out1, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB";
  attribute X_INTERFACE_INFO of SLOT_1_LMB_abus : signal is "xilinx.com:interface:lmb:1.0 SLOT_1_LMB ABUS";
  attribute X_INTERFACE_MODE of SLOT_1_LMB_abus : signal is "Monitor SlaveType";
  attribute X_INTERFACE_PARAMETER of SLOT_1_LMB_abus : signal is "XIL_INTERFACENAME SLOT_1_LMB, ADDR_WIDTH 32, DATA_WIDTH 32, HAS_PROT 0, PROTOCOL STANDARD, READ_WRITE_MODE READ_WRITE";
  attribute X_INTERFACE_INFO of SLOT_1_LMB_be : signal is "xilinx.com:interface:lmb:1.0 SLOT_1_LMB BE";
  attribute X_INTERFACE_INFO of SLOT_1_LMB_readdbus : signal is "xilinx.com:interface:lmb:1.0 SLOT_1_LMB READDBUS";
  attribute X_INTERFACE_INFO of SLOT_1_LMB_writedbus : signal is "xilinx.com:interface:lmb:1.0 SLOT_1_LMB WRITEDBUS";
begin
g_inst: component bd_074c_g_inst_0
     port map (
      aclk => clk,
      aresetn => resetn,
      m_slot_0_axi_ar_cnt(1 downto 0) => net_slot_0_axi_ar_cnt(1 downto 0),
      m_slot_0_axi_araddr(8 downto 0) => net_slot_0_axi_araddr(8 downto 0),
      m_slot_0_axi_arprot(2 downto 0) => net_slot_0_axi_arprot(2 downto 0),
      m_slot_0_axi_arready => net_slot_0_axi_arready,
      m_slot_0_axi_arvalid => net_slot_0_axi_arvalid,
      m_slot_0_axi_aw_cnt(1 downto 0) => net_slot_0_axi_aw_cnt(1 downto 0),
      m_slot_0_axi_awaddr(8 downto 0) => net_slot_0_axi_awaddr(8 downto 0),
      m_slot_0_axi_awprot(2 downto 0) => net_slot_0_axi_awprot(2 downto 0),
      m_slot_0_axi_awready => net_slot_0_axi_awready,
      m_slot_0_axi_awvalid => net_slot_0_axi_awvalid,
      m_slot_0_axi_b_cnt(1 downto 0) => net_slot_0_axi_b_cnt(1 downto 0),
      m_slot_0_axi_bready => net_slot_0_axi_bready,
      m_slot_0_axi_bresp(1 downto 0) => net_slot_0_axi_bresp(1 downto 0),
      m_slot_0_axi_bvalid => net_slot_0_axi_bvalid,
      m_slot_0_axi_r_cnt(1 downto 0) => net_slot_0_axi_r_cnt(1 downto 0),
      m_slot_0_axi_rdata(31 downto 0) => net_slot_0_axi_rdata(31 downto 0),
      m_slot_0_axi_rready => net_slot_0_axi_rready,
      m_slot_0_axi_rresp(1 downto 0) => net_slot_0_axi_rresp(1 downto 0),
      m_slot_0_axi_rvalid => net_slot_0_axi_rvalid,
      m_slot_0_axi_wdata(31 downto 0) => net_slot_0_axi_wdata(31 downto 0),
      m_slot_0_axi_wready => net_slot_0_axi_wready,
      m_slot_0_axi_wstrb(3 downto 0) => net_slot_0_axi_wstrb(3 downto 0),
      m_slot_0_axi_wvalid => net_slot_0_axi_wvalid,
      slot_0_axi_araddr(8 downto 0) => SLOT_0_AXI_araddr(8 downto 0),
      slot_0_axi_arprot(2 downto 0) => SLOT_0_AXI_arprot(2 downto 0),
      slot_0_axi_arready => SLOT_0_AXI_arready,
      slot_0_axi_arvalid => SLOT_0_AXI_arvalid,
      slot_0_axi_awaddr(8 downto 0) => SLOT_0_AXI_awaddr(8 downto 0),
      slot_0_axi_awprot(2 downto 0) => SLOT_0_AXI_awprot(2 downto 0),
      slot_0_axi_awready => SLOT_0_AXI_awready,
      slot_0_axi_awvalid => SLOT_0_AXI_awvalid,
      slot_0_axi_bready => SLOT_0_AXI_bready,
      slot_0_axi_bresp(1 downto 0) => SLOT_0_AXI_bresp(1 downto 0),
      slot_0_axi_bvalid => SLOT_0_AXI_bvalid,
      slot_0_axi_rdata(31 downto 0) => SLOT_0_AXI_rdata(31 downto 0),
      slot_0_axi_rready => SLOT_0_AXI_rready,
      slot_0_axi_rresp(1 downto 0) => SLOT_0_AXI_rresp(1 downto 0),
      slot_0_axi_rvalid => SLOT_0_AXI_rvalid,
      slot_0_axi_wdata(31 downto 0) => SLOT_0_AXI_wdata(31 downto 0),
      slot_0_axi_wready => SLOT_0_AXI_wready,
      slot_0_axi_wstrb(3 downto 0) => SLOT_0_AXI_wstrb(3 downto 0),
      slot_0_axi_wvalid => SLOT_0_AXI_wvalid
    );
ila_lib: component bd_074c_ila_lib_0
     port map (
      clk => clk,
      probe0(1 downto 0) => net_slot_0_axi_ar_cnt(1 downto 0),
      probe1(8 downto 0) => net_slot_0_axi_araddr(8 downto 0),
      probe10(1 downto 0) => net_slot_0_axi_rresp(1 downto 0),
      probe11(31 downto 0) => net_slot_0_axi_wdata(31 downto 0),
      probe12(3 downto 0) => net_slot_0_axi_wstrb(3 downto 0),
      probe13(1 downto 0) => net_slot_0_axi_aw_ctrl(1 downto 0),
      probe14(1 downto 0) => net_slot_0_axi_w_ctrl(1 downto 0),
      probe15(1 downto 0) => net_slot_0_axi_b_ctrl(1 downto 0),
      probe16(1 downto 0) => net_slot_0_axi_ar_ctrl(1 downto 0),
      probe17(1 downto 0) => net_slot_0_axi_r_ctrl(1 downto 0),
      probe18(31) => SLOT_1_LMB_abus(0),
      probe18(30) => SLOT_1_LMB_abus(1),
      probe18(29) => SLOT_1_LMB_abus(2),
      probe18(28) => SLOT_1_LMB_abus(3),
      probe18(27) => SLOT_1_LMB_abus(4),
      probe18(26) => SLOT_1_LMB_abus(5),
      probe18(25) => SLOT_1_LMB_abus(6),
      probe18(24) => SLOT_1_LMB_abus(7),
      probe18(23) => SLOT_1_LMB_abus(8),
      probe18(22) => SLOT_1_LMB_abus(9),
      probe18(21) => SLOT_1_LMB_abus(10),
      probe18(20) => SLOT_1_LMB_abus(11),
      probe18(19) => SLOT_1_LMB_abus(12),
      probe18(18) => SLOT_1_LMB_abus(13),
      probe18(17) => SLOT_1_LMB_abus(14),
      probe18(16) => SLOT_1_LMB_abus(15),
      probe18(15) => SLOT_1_LMB_abus(16),
      probe18(14) => SLOT_1_LMB_abus(17),
      probe18(13) => SLOT_1_LMB_abus(18),
      probe18(12) => SLOT_1_LMB_abus(19),
      probe18(11) => SLOT_1_LMB_abus(20),
      probe18(10) => SLOT_1_LMB_abus(21),
      probe18(9) => SLOT_1_LMB_abus(22),
      probe18(8) => SLOT_1_LMB_abus(23),
      probe18(7) => SLOT_1_LMB_abus(24),
      probe18(6) => SLOT_1_LMB_abus(25),
      probe18(5) => SLOT_1_LMB_abus(26),
      probe18(4) => SLOT_1_LMB_abus(27),
      probe18(3) => SLOT_1_LMB_abus(28),
      probe18(2) => SLOT_1_LMB_abus(29),
      probe18(1) => SLOT_1_LMB_abus(30),
      probe18(0) => SLOT_1_LMB_abus(31),
      probe19(0) => SLOT_1_LMB_addrstrobe,
      probe2(2 downto 0) => net_slot_0_axi_arprot(2 downto 0),
      probe20(3) => SLOT_1_LMB_be(0),
      probe20(2) => SLOT_1_LMB_be(1),
      probe20(1) => SLOT_1_LMB_be(2),
      probe20(0) => SLOT_1_LMB_be(3),
      probe21(0) => SLOT_1_LMB_ce,
      probe22(31) => SLOT_1_LMB_readdbus(0),
      probe22(30) => SLOT_1_LMB_readdbus(1),
      probe22(29) => SLOT_1_LMB_readdbus(2),
      probe22(28) => SLOT_1_LMB_readdbus(3),
      probe22(27) => SLOT_1_LMB_readdbus(4),
      probe22(26) => SLOT_1_LMB_readdbus(5),
      probe22(25) => SLOT_1_LMB_readdbus(6),
      probe22(24) => SLOT_1_LMB_readdbus(7),
      probe22(23) => SLOT_1_LMB_readdbus(8),
      probe22(22) => SLOT_1_LMB_readdbus(9),
      probe22(21) => SLOT_1_LMB_readdbus(10),
      probe22(20) => SLOT_1_LMB_readdbus(11),
      probe22(19) => SLOT_1_LMB_readdbus(12),
      probe22(18) => SLOT_1_LMB_readdbus(13),
      probe22(17) => SLOT_1_LMB_readdbus(14),
      probe22(16) => SLOT_1_LMB_readdbus(15),
      probe22(15) => SLOT_1_LMB_readdbus(16),
      probe22(14) => SLOT_1_LMB_readdbus(17),
      probe22(13) => SLOT_1_LMB_readdbus(18),
      probe22(12) => SLOT_1_LMB_readdbus(19),
      probe22(11) => SLOT_1_LMB_readdbus(20),
      probe22(10) => SLOT_1_LMB_readdbus(21),
      probe22(9) => SLOT_1_LMB_readdbus(22),
      probe22(8) => SLOT_1_LMB_readdbus(23),
      probe22(7) => SLOT_1_LMB_readdbus(24),
      probe22(6) => SLOT_1_LMB_readdbus(25),
      probe22(5) => SLOT_1_LMB_readdbus(26),
      probe22(4) => SLOT_1_LMB_readdbus(27),
      probe22(3) => SLOT_1_LMB_readdbus(28),
      probe22(2) => SLOT_1_LMB_readdbus(29),
      probe22(1) => SLOT_1_LMB_readdbus(30),
      probe22(0) => SLOT_1_LMB_readdbus(31),
      probe23(0) => SLOT_1_LMB_readstrobe,
      probe24(0) => SLOT_1_LMB_ready,
      probe25(0) => SLOT_1_LMB_ue,
      probe26(0) => SLOT_1_LMB_wait,
      probe27(31) => SLOT_1_LMB_writedbus(0),
      probe27(30) => SLOT_1_LMB_writedbus(1),
      probe27(29) => SLOT_1_LMB_writedbus(2),
      probe27(28) => SLOT_1_LMB_writedbus(3),
      probe27(27) => SLOT_1_LMB_writedbus(4),
      probe27(26) => SLOT_1_LMB_writedbus(5),
      probe27(25) => SLOT_1_LMB_writedbus(6),
      probe27(24) => SLOT_1_LMB_writedbus(7),
      probe27(23) => SLOT_1_LMB_writedbus(8),
      probe27(22) => SLOT_1_LMB_writedbus(9),
      probe27(21) => SLOT_1_LMB_writedbus(10),
      probe27(20) => SLOT_1_LMB_writedbus(11),
      probe27(19) => SLOT_1_LMB_writedbus(12),
      probe27(18) => SLOT_1_LMB_writedbus(13),
      probe27(17) => SLOT_1_LMB_writedbus(14),
      probe27(16) => SLOT_1_LMB_writedbus(15),
      probe27(15) => SLOT_1_LMB_writedbus(16),
      probe27(14) => SLOT_1_LMB_writedbus(17),
      probe27(13) => SLOT_1_LMB_writedbus(18),
      probe27(12) => SLOT_1_LMB_writedbus(19),
      probe27(11) => SLOT_1_LMB_writedbus(20),
      probe27(10) => SLOT_1_LMB_writedbus(21),
      probe27(9) => SLOT_1_LMB_writedbus(22),
      probe27(8) => SLOT_1_LMB_writedbus(23),
      probe27(7) => SLOT_1_LMB_writedbus(24),
      probe27(6) => SLOT_1_LMB_writedbus(25),
      probe27(5) => SLOT_1_LMB_writedbus(26),
      probe27(4) => SLOT_1_LMB_writedbus(27),
      probe27(3) => SLOT_1_LMB_writedbus(28),
      probe27(2) => SLOT_1_LMB_writedbus(29),
      probe27(1) => SLOT_1_LMB_writedbus(30),
      probe27(0) => SLOT_1_LMB_writedbus(31),
      probe28(0) => SLOT_1_LMB_writestrobe,
      probe3(1 downto 0) => net_slot_0_axi_aw_cnt(1 downto 0),
      probe4(8 downto 0) => net_slot_0_axi_awaddr(8 downto 0),
      probe5(2 downto 0) => net_slot_0_axi_awprot(2 downto 0),
      probe6(1 downto 0) => net_slot_0_axi_b_cnt(1 downto 0),
      probe7(1 downto 0) => net_slot_0_axi_bresp(1 downto 0),
      probe8(1 downto 0) => net_slot_0_axi_r_cnt(1 downto 0),
      probe9(31 downto 0) => net_slot_0_axi_rdata(31 downto 0)
    );
slot_0_ar: component bd_074c_slot_0_ar_0
     port map (
      In0(0) => net_slot_0_axi_arvalid,
      In1(0) => net_slot_0_axi_arready,
      dout(1 downto 0) => net_slot_0_axi_ar_ctrl(1 downto 0)
    );
slot_0_aw: component bd_074c_slot_0_aw_0
     port map (
      In0(0) => net_slot_0_axi_awvalid,
      In1(0) => net_slot_0_axi_awready,
      dout(1 downto 0) => net_slot_0_axi_aw_ctrl(1 downto 0)
    );
slot_0_b: component bd_074c_slot_0_b_0
     port map (
      In0(0) => net_slot_0_axi_bvalid,
      In1(0) => net_slot_0_axi_bready,
      dout(1 downto 0) => net_slot_0_axi_b_ctrl(1 downto 0)
    );
slot_0_r: component bd_074c_slot_0_r_0
     port map (
      In0(0) => net_slot_0_axi_rvalid,
      In1(0) => net_slot_0_axi_rready,
      dout(1 downto 0) => net_slot_0_axi_r_ctrl(1 downto 0)
    );
slot_0_w: component bd_074c_slot_0_w_0
     port map (
      In0(0) => net_slot_0_axi_wvalid,
      In1(0) => net_slot_0_axi_wready,
      dout(1 downto 0) => net_slot_0_axi_w_ctrl(1 downto 0)
    );
end STRUCTURE;
