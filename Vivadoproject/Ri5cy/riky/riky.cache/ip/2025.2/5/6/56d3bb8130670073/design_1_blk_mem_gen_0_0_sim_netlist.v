// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Nov 29 19:32:21 2025
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
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
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
  (* C_EN_SAFETY_CKT = "0" *) 
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
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 49648)
`pragma protect data_block
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
ow==
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
