# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXI_A_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_D_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MASTER_MODE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MCLK_HZ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "POST_PAD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PRE_PAD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RX_SAMPLE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SAMPLE_RATE_HZ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TX_SAMPLE_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXI_A_WIDTH { PARAM_VALUE.AXI_A_WIDTH } {
	# Procedure called to update AXI_A_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_A_WIDTH { PARAM_VALUE.AXI_A_WIDTH } {
	# Procedure called to validate AXI_A_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_D_WIDTH { PARAM_VALUE.AXI_D_WIDTH } {
	# Procedure called to update AXI_D_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_D_WIDTH { PARAM_VALUE.AXI_D_WIDTH } {
	# Procedure called to validate AXI_D_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_ID_WIDTH { PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to update AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ID_WIDTH { PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to validate AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.MASTER_MODE { PARAM_VALUE.MASTER_MODE } {
	# Procedure called to update MASTER_MODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MASTER_MODE { PARAM_VALUE.MASTER_MODE } {
	# Procedure called to validate MASTER_MODE
	return true
}

proc update_PARAM_VALUE.MCLK_HZ { PARAM_VALUE.MCLK_HZ } {
	# Procedure called to update MCLK_HZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MCLK_HZ { PARAM_VALUE.MCLK_HZ } {
	# Procedure called to validate MCLK_HZ
	return true
}

proc update_PARAM_VALUE.POST_PAD { PARAM_VALUE.POST_PAD } {
	# Procedure called to update POST_PAD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.POST_PAD { PARAM_VALUE.POST_PAD } {
	# Procedure called to validate POST_PAD
	return true
}

proc update_PARAM_VALUE.PRE_PAD { PARAM_VALUE.PRE_PAD } {
	# Procedure called to update PRE_PAD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRE_PAD { PARAM_VALUE.PRE_PAD } {
	# Procedure called to validate PRE_PAD
	return true
}

proc update_PARAM_VALUE.RX_SAMPLE_WIDTH { PARAM_VALUE.RX_SAMPLE_WIDTH } {
	# Procedure called to update RX_SAMPLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RX_SAMPLE_WIDTH { PARAM_VALUE.RX_SAMPLE_WIDTH } {
	# Procedure called to validate RX_SAMPLE_WIDTH
	return true
}

proc update_PARAM_VALUE.SAMPLE_RATE_HZ { PARAM_VALUE.SAMPLE_RATE_HZ } {
	# Procedure called to update SAMPLE_RATE_HZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SAMPLE_RATE_HZ { PARAM_VALUE.SAMPLE_RATE_HZ } {
	# Procedure called to validate SAMPLE_RATE_HZ
	return true
}

proc update_PARAM_VALUE.TX_SAMPLE_WIDTH { PARAM_VALUE.TX_SAMPLE_WIDTH } {
	# Procedure called to update TX_SAMPLE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TX_SAMPLE_WIDTH { PARAM_VALUE.TX_SAMPLE_WIDTH } {
	# Procedure called to validate TX_SAMPLE_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.AXI_D_WIDTH { MODELPARAM_VALUE.AXI_D_WIDTH PARAM_VALUE.AXI_D_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_D_WIDTH}] ${MODELPARAM_VALUE.AXI_D_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_A_WIDTH { MODELPARAM_VALUE.AXI_A_WIDTH PARAM_VALUE.AXI_A_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_A_WIDTH}] ${MODELPARAM_VALUE.AXI_A_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_ID_WIDTH { MODELPARAM_VALUE.AXI_ID_WIDTH PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ID_WIDTH}] ${MODELPARAM_VALUE.AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.MASTER_MODE { MODELPARAM_VALUE.MASTER_MODE PARAM_VALUE.MASTER_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MASTER_MODE}] ${MODELPARAM_VALUE.MASTER_MODE}
}

proc update_MODELPARAM_VALUE.MCLK_HZ { MODELPARAM_VALUE.MCLK_HZ PARAM_VALUE.MCLK_HZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MCLK_HZ}] ${MODELPARAM_VALUE.MCLK_HZ}
}

proc update_MODELPARAM_VALUE.SAMPLE_RATE_HZ { MODELPARAM_VALUE.SAMPLE_RATE_HZ PARAM_VALUE.SAMPLE_RATE_HZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SAMPLE_RATE_HZ}] ${MODELPARAM_VALUE.SAMPLE_RATE_HZ}
}

proc update_MODELPARAM_VALUE.TX_SAMPLE_WIDTH { MODELPARAM_VALUE.TX_SAMPLE_WIDTH PARAM_VALUE.TX_SAMPLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TX_SAMPLE_WIDTH}] ${MODELPARAM_VALUE.TX_SAMPLE_WIDTH}
}

proc update_MODELPARAM_VALUE.RX_SAMPLE_WIDTH { MODELPARAM_VALUE.RX_SAMPLE_WIDTH PARAM_VALUE.RX_SAMPLE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RX_SAMPLE_WIDTH}] ${MODELPARAM_VALUE.RX_SAMPLE_WIDTH}
}

proc update_MODELPARAM_VALUE.PRE_PAD { MODELPARAM_VALUE.PRE_PAD PARAM_VALUE.PRE_PAD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRE_PAD}] ${MODELPARAM_VALUE.PRE_PAD}
}

proc update_MODELPARAM_VALUE.POST_PAD { MODELPARAM_VALUE.POST_PAD PARAM_VALUE.POST_PAD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.POST_PAD}] ${MODELPARAM_VALUE.POST_PAD}
}

