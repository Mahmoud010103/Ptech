# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S_AXI_DATA_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_DATA_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_INSTR_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_INSTR_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INSTR_RDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N_EXT_PERF_COUNTERS" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_S_AXI_DATA_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_DATA_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_DATA_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_INSTR_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_INSTR_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_INSTR_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_INSTR_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_INSTR_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_INSTR_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_INSTR_DATA_WIDTH { PARAM_VALUE.C_S_AXI_INSTR_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_INSTR_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_INSTR_DATA_WIDTH { PARAM_VALUE.C_S_AXI_INSTR_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_INSTR_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.INSTR_RDATA_WIDTH { PARAM_VALUE.INSTR_RDATA_WIDTH } {
	# Procedure called to update INSTR_RDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INSTR_RDATA_WIDTH { PARAM_VALUE.INSTR_RDATA_WIDTH } {
	# Procedure called to validate INSTR_RDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.N_EXT_PERF_COUNTERS { PARAM_VALUE.N_EXT_PERF_COUNTERS } {
	# Procedure called to update N_EXT_PERF_COUNTERS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N_EXT_PERF_COUNTERS { PARAM_VALUE.N_EXT_PERF_COUNTERS } {
	# Procedure called to validate N_EXT_PERF_COUNTERS
	return true
}


proc update_MODELPARAM_VALUE.N_EXT_PERF_COUNTERS { MODELPARAM_VALUE.N_EXT_PERF_COUNTERS PARAM_VALUE.N_EXT_PERF_COUNTERS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N_EXT_PERF_COUNTERS}] ${MODELPARAM_VALUE.N_EXT_PERF_COUNTERS}
}

proc update_MODELPARAM_VALUE.INSTR_RDATA_WIDTH { MODELPARAM_VALUE.INSTR_RDATA_WIDTH PARAM_VALUE.INSTR_RDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INSTR_RDATA_WIDTH}] ${MODELPARAM_VALUE.INSTR_RDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_INSTR_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_INSTR_ADDR_WIDTH PARAM_VALUE.C_S_AXI_INSTR_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_INSTR_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_INSTR_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_INSTR_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_INSTR_DATA_WIDTH PARAM_VALUE.C_S_AXI_INSTR_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_INSTR_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_INSTR_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_DATA_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_ADDR_WIDTH PARAM_VALUE.C_S_AXI_DATA_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_DATA_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_DATA_WIDTH}
}

