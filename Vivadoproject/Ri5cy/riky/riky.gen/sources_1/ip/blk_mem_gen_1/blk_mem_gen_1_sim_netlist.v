// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Nov 13 16:52:34 2025
// Host        : DESKTOP-E8CT5SI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_1 -prefix
//               blk_mem_gen_1_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19968)
`pragma protect data_block
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
uRQFKU48X98LNGlYbUf6Ns7/
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
