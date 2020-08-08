
################################################################
# This is a generated script based on design: I2S_Core_TEST_bd
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source I2S_Core_TEST_bd_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# I2C_BIBUF, I2S_Core_TEST

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
   set_property BOARD_PART digilentinc.com:zybo-z7-10:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name I2S_Core_TEST_bd

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set ac_bclk [ create_bd_port -dir O -type clk ac_bclk ]
  set ac_mclk [ create_bd_port -dir O -type clk ac_mclk ]
  set ac_muten [ create_bd_port -dir O ac_muten ]
  set ac_pbdat [ create_bd_port -dir O ac_pbdat ]
  set ac_pblrc [ create_bd_port -dir O ac_pblrc ]
  set ac_recdat [ create_bd_port -dir I ac_recdat ]
  set ac_reclrc [ create_bd_port -dir O ac_reclrc ]
  set ac_scl [ create_bd_port -dir IO ac_scl ]
  set ac_sda [ create_bd_port -dir IO ac_sda ]
  set jc [ create_bd_port -dir O -from 7 -to 0 jc ]
  set reset_btn [ create_bd_port -dir I -type rst reset_btn ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset_btn
  set sw [ create_bd_port -dir I -from 3 -to 0 sw ]
  set sysclk [ create_bd_port -dir I -type clk -freq_hz 125000000 sysclk ]
  set test_scl [ create_bd_port -dir O test_scl ]
  set test_sda [ create_bd_port -dir O test_sda ]

  # Create instance: I2C_BIBUF_0, and set properties
  set block_name I2C_BIBUF
  set block_cell_name I2C_BIBUF_0
  if { [catch {set I2C_BIBUF_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $I2C_BIBUF_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: I2S_Core_TEST_0, and set properties
  set block_name I2S_Core_TEST
  set block_cell_name I2S_Core_TEST_0
  if { [catch {set I2S_Core_TEST_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $I2S_Core_TEST_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] [get_bd_pins /I2S_Core_TEST_0/rst]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {237.312} \
   CONFIG.CLKOUT1_PHASE_ERROR {249.865} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {36} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {9} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.PRIMITIVE {PLL} \
 ] $clk_wiz_0

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_1 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {360.948} \
   CONFIG.CLKOUT1_PHASE_ERROR {301.601} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {12.288} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {48.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {78.125} \
   CONFIG.MMCM_DIVCLK_DIVIDE {5} \
 ] $clk_wiz_1

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CLK0_FREQ {10000000} \
   CONFIG.PCW_CLK1_FREQ {10000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_EN_CLK0_PORT {0} \
   CONFIG.PCW_EN_DDR {0} \
   CONFIG.PCW_EN_EMIO_I2C0 {1} \
   CONFIG.PCW_EN_I2C0 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK0_BUF {FALSE} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {1} \
   CONFIG.PCW_I2C0_GRP_INT_IO {EMIO} \
   CONFIG.PCW_I2C0_I2C0_IO {EMIO} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {48} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1600.000} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
   CONFIG.PCW_UIPARAM_DDR_ENABLE {0} \
   CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {0} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {0} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {0} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
   CONFIG.PCW_USE_M_AXI_GP0 {0} \
 ] $processing_system7_0

  # Create port connections
  connect_bd_net -net I2C_BIBUF_0_i2c_scl_o [get_bd_ports test_scl] [get_bd_pins I2C_BIBUF_0/i2c_scl_o] [get_bd_pins processing_system7_0/I2C0_SCL_I]
  connect_bd_net -net I2C_BIBUF_0_i2c_sda_o [get_bd_ports test_sda] [get_bd_pins I2C_BIBUF_0/i2c_sda_o] [get_bd_pins processing_system7_0/I2C0_SDA_I]
  connect_bd_net -net I2S_Core_TEST_0_audio_mclk [get_bd_ports ac_mclk] [get_bd_pins I2S_Core_TEST_0/audio_mclk]
  connect_bd_net -net I2S_Core_TEST_0_audio_mute [get_bd_ports ac_muten] [get_bd_pins I2S_Core_TEST_0/audio_mute_n]
  connect_bd_net -net I2S_Core_TEST_0_i2s_bclk [get_bd_ports ac_bclk] [get_bd_pins I2S_Core_TEST_0/i2s_bclk]
  connect_bd_net -net I2S_Core_TEST_0_i2s_pbdat [get_bd_ports ac_pbdat] [get_bd_pins I2S_Core_TEST_0/i2s_pbdat]
  connect_bd_net -net I2S_Core_TEST_0_i2s_pblrc [get_bd_ports ac_pblrc] [get_bd_pins I2S_Core_TEST_0/i2s_pblrc]
  connect_bd_net -net I2S_Core_TEST_0_i2s_reclrc [get_bd_ports ac_reclrc] [get_bd_pins I2S_Core_TEST_0/i2s_reclrc]
  connect_bd_net -net I2S_Core_TEST_0_jc [get_bd_ports jc] [get_bd_pins I2S_Core_TEST_0/jc]
  connect_bd_net -net Net [get_bd_ports ac_sda] [get_bd_pins I2C_BIBUF_0/i2c_sda]
  connect_bd_net -net Net1 [get_bd_ports ac_scl] [get_bd_pins I2C_BIBUF_0/i2c_scl]
  connect_bd_net -net ac_recdat_1 [get_bd_ports ac_recdat] [get_bd_pins I2S_Core_TEST_0/i2s_recdat]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins I2S_Core_TEST_0/clk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins clk_wiz_1/clk_in1]
  connect_bd_net -net clk_wiz_1_clk_out1 [get_bd_pins I2S_Core_TEST_0/mclk] [get_bd_pins clk_wiz_1/clk_out1]
  connect_bd_net -net processing_system7_0_I2C0_SCL_O [get_bd_pins I2C_BIBUF_0/i2c_scl_i] [get_bd_pins processing_system7_0/I2C0_SCL_O]
  connect_bd_net -net processing_system7_0_I2C0_SCL_T [get_bd_pins I2C_BIBUF_0/i2c_scl_e] [get_bd_pins processing_system7_0/I2C0_SCL_T]
  connect_bd_net -net processing_system7_0_I2C0_SDA_O [get_bd_pins I2C_BIBUF_0/i2c_sda_i] [get_bd_pins processing_system7_0/I2C0_SDA_O]
  connect_bd_net -net processing_system7_0_I2C0_SDA_T [get_bd_pins I2C_BIBUF_0/i2c_sda_e] [get_bd_pins processing_system7_0/I2C0_SDA_T]
  connect_bd_net -net reset_btn_1 [get_bd_ports reset_btn] [get_bd_pins I2S_Core_TEST_0/rst]
  connect_bd_net -net sw_1 [get_bd_ports sw] [get_bd_pins I2S_Core_TEST_0/sw]
  connect_bd_net -net sysclk_1 [get_bd_ports sysclk] [get_bd_pins clk_wiz_0/clk_in1]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


