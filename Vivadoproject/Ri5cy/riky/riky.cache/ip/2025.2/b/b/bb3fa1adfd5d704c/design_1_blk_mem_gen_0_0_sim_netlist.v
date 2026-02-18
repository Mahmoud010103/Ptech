// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Nov 29 14:26:57 2025
// Host        : DESKTOP-E8CT5SI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.3746 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53408)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
