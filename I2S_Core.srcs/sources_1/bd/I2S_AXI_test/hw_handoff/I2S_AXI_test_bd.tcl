
################################################################
# This is a generated script based on design: I2S_AXI_test
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
# source I2S_AXI_test_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# I2S_Core_AXI

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
set design_name I2S_AXI_test

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
  set audio_mclk [ create_bd_port -dir O audio_mclk ]
  set bclk_i [ create_bd_port -dir I bclk_i ]
  set bclk_o [ create_bd_port -dir O bclk_o ]
  set clk [ create_bd_port -dir I -type clk -freq_hz 100000000 clk ]
  set i2s_rx_dat [ create_bd_port -dir I i2s_rx_dat ]
  set i2s_rx_lrc_i [ create_bd_port -dir I i2s_rx_lrc_i ]
  set i2s_rx_lrc_o [ create_bd_port -dir O i2s_rx_lrc_o ]
  set i2s_tx_dat [ create_bd_port -dir O i2s_tx_dat ]
  set i2s_tx_lrc_i [ create_bd_port -dir I i2s_tx_lrc_i ]
  set i2s_tx_lrc_o [ create_bd_port -dir O i2s_tx_lrc_o ]
  set interrupt [ create_bd_port -dir O -type intr interrupt ]
  set mclk [ create_bd_port -dir I mclk ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $rst
  set rstn [ create_bd_port -dir I -type rst rstn ]

  # Create instance: I2S_Core_AXI_0, and set properties
  set block_name I2S_Core_AXI
  set block_cell_name I2S_Core_AXI_0
  if { [catch {set I2S_Core_AXI_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $I2S_Core_AXI_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_vip_0, and set properties
  set axi_vip_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 axi_vip_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.INTERFACE_MODE {MASTER} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
 ] $axi_vip_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_vip_0_M_AXI [get_bd_intf_pins I2S_Core_AXI_0/S_AXI4] [get_bd_intf_pins axi_vip_0/M_AXI]

  # Create port connections
  connect_bd_net -net I2S_Core_AXI_0_audio_mclk [get_bd_ports audio_mclk] [get_bd_pins I2S_Core_AXI_0/audio_mclk]
  connect_bd_net -net I2S_Core_AXI_0_bclk_o [get_bd_ports bclk_o] [get_bd_pins I2S_Core_AXI_0/bclk_o]
  connect_bd_net -net I2S_Core_AXI_0_i2s_rx_lrc_o [get_bd_ports i2s_rx_lrc_o] [get_bd_pins I2S_Core_AXI_0/i2s_rx_lrc_o]
  connect_bd_net -net I2S_Core_AXI_0_i2s_tx_dat [get_bd_ports i2s_tx_dat] [get_bd_pins I2S_Core_AXI_0/i2s_tx_dat]
  connect_bd_net -net I2S_Core_AXI_0_i2s_tx_lrc_o [get_bd_ports i2s_tx_lrc_o] [get_bd_pins I2S_Core_AXI_0/i2s_tx_lrc_o]
  connect_bd_net -net I2S_Core_AXI_0_interrupt [get_bd_ports interrupt] [get_bd_pins I2S_Core_AXI_0/interrupt]
  connect_bd_net -net bclk_i_1 [get_bd_ports bclk_i] [get_bd_pins I2S_Core_AXI_0/bclk_i]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins I2S_Core_AXI_0/clk] [get_bd_pins axi_vip_0/aclk]
  connect_bd_net -net i2s_rx_dat_1 [get_bd_ports i2s_rx_dat] [get_bd_pins I2S_Core_AXI_0/i2s_rx_dat]
  connect_bd_net -net i2s_rx_lrc_i_1 [get_bd_ports i2s_rx_lrc_i] [get_bd_pins I2S_Core_AXI_0/i2s_rx_lrc_i]
  connect_bd_net -net i2s_tx_lrc_i_1 [get_bd_ports i2s_tx_lrc_i] [get_bd_pins I2S_Core_AXI_0/i2s_tx_lrc_i]
  connect_bd_net -net mclk_1 [get_bd_ports mclk] [get_bd_pins I2S_Core_AXI_0/mclk]
  connect_bd_net -net rst_1 [get_bd_ports rst] [get_bd_pins I2S_Core_AXI_0/rst]
  connect_bd_net -net rstn_1 [get_bd_ports rstn] [get_bd_pins axi_vip_0/aresetn]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x00000080 -target_address_space [get_bd_addr_spaces axi_vip_0/Master_AXI] [get_bd_addr_segs I2S_Core_AXI_0/S_AXI4/reg0] -force


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


