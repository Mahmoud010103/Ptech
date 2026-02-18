//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Sat Nov 29 13:37:56 2025
//Host        : DESKTOP-E8CT5SI running 64-bit major release  (build 9200)
//Command     : generate_target ri5cy_ai_platform_wrapper.bd
//Design      : ri5cy_ai_platform_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ri5cy_ai_platform_wrapper
   (leds_8bits_tri_o,
    reset_rtl,
    sys_clock_0);
  output [7:0]leds_8bits_tri_o;
  input reset_rtl;
  input sys_clock_0;

  wire [7:0]leds_8bits_tri_o;
  wire reset_rtl;
  wire sys_clock_0;

  ri5cy_ai_platform ri5cy_ai_platform_i
       (.leds_8bits_tri_o(leds_8bits_tri_o),
        .reset_rtl(reset_rtl),
        .sys_clock_0(sys_clock_0));
endmodule
