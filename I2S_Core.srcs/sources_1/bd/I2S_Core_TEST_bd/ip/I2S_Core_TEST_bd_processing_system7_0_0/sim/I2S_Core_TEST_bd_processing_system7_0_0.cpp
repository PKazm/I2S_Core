// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#include "I2S_Core_TEST_bd_processing_system7_0_0_sc.h"

#include "I2S_Core_TEST_bd_processing_system7_0_0.h"

#include "processing_system7_v5_5_tlm.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
I2S_Core_TEST_bd_processing_system7_0_0::I2S_Core_TEST_bd_processing_system7_0_0(const sc_core::sc_module_name& nm) : I2S_Core_TEST_bd_processing_system7_0_0_sc(nm), I2C0_SDA_I("I2C0_SDA_I"), I2C0_SDA_O("I2C0_SDA_O"), I2C0_SDA_T("I2C0_SDA_T"), I2C0_SCL_I("I2C0_SCL_I"), I2C0_SCL_O("I2C0_SCL_O"), I2C0_SCL_T("I2C0_SCL_T"), FCLK_RESET0_N("FCLK_RESET0_N"), MIO("MIO"), PS_SRSTB("PS_SRSTB"), PS_CLK("PS_CLK"), PS_PORB("PS_PORB")
{

  // initialize pins
  mp_impl->I2C0_SDA_I(I2C0_SDA_I);
  mp_impl->I2C0_SDA_O(I2C0_SDA_O);
  mp_impl->I2C0_SDA_T(I2C0_SDA_T);
  mp_impl->I2C0_SCL_I(I2C0_SCL_I);
  mp_impl->I2C0_SCL_O(I2C0_SCL_O);
  mp_impl->I2C0_SCL_T(I2C0_SCL_T);
  mp_impl->FCLK_RESET0_N(FCLK_RESET0_N);
  mp_impl->MIO(MIO);
  mp_impl->PS_SRSTB(PS_SRSTB);
  mp_impl->PS_CLK(PS_CLK);
  mp_impl->PS_PORB(PS_PORB);

}

void I2S_Core_TEST_bd_processing_system7_0_0::before_end_of_elaboration()
{
}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
I2S_Core_TEST_bd_processing_system7_0_0::I2S_Core_TEST_bd_processing_system7_0_0(const sc_core::sc_module_name& nm) : I2S_Core_TEST_bd_processing_system7_0_0_sc(nm), I2C0_SDA_I("I2C0_SDA_I"), I2C0_SDA_O("I2C0_SDA_O"), I2C0_SDA_T("I2C0_SDA_T"), I2C0_SCL_I("I2C0_SCL_I"), I2C0_SCL_O("I2C0_SCL_O"), I2C0_SCL_T("I2C0_SCL_T"), FCLK_RESET0_N("FCLK_RESET0_N"), MIO("MIO"), PS_SRSTB("PS_SRSTB"), PS_CLK("PS_CLK"), PS_PORB("PS_PORB")
{

  // initialize pins
  mp_impl->I2C0_SDA_I(I2C0_SDA_I);
  mp_impl->I2C0_SDA_O(I2C0_SDA_O);
  mp_impl->I2C0_SDA_T(I2C0_SDA_T);
  mp_impl->I2C0_SCL_I(I2C0_SCL_I);
  mp_impl->I2C0_SCL_O(I2C0_SCL_O);
  mp_impl->I2C0_SCL_T(I2C0_SCL_T);
  mp_impl->FCLK_RESET0_N(FCLK_RESET0_N);
  mp_impl->MIO(MIO);
  mp_impl->PS_SRSTB(PS_SRSTB);
  mp_impl->PS_CLK(PS_CLK);
  mp_impl->PS_PORB(PS_PORB);

}

void I2S_Core_TEST_bd_processing_system7_0_0::before_end_of_elaboration()
{
}

#endif // XM_SYSTEMC




#ifdef RIVIERA
I2S_Core_TEST_bd_processing_system7_0_0::I2S_Core_TEST_bd_processing_system7_0_0(const sc_core::sc_module_name& nm) : I2S_Core_TEST_bd_processing_system7_0_0_sc(nm), I2C0_SDA_I("I2C0_SDA_I"), I2C0_SDA_O("I2C0_SDA_O"), I2C0_SDA_T("I2C0_SDA_T"), I2C0_SCL_I("I2C0_SCL_I"), I2C0_SCL_O("I2C0_SCL_O"), I2C0_SCL_T("I2C0_SCL_T"), FCLK_RESET0_N("FCLK_RESET0_N"), MIO("MIO"), PS_SRSTB("PS_SRSTB"), PS_CLK("PS_CLK"), PS_PORB("PS_PORB")
{

  // initialize pins
  mp_impl->I2C0_SDA_I(I2C0_SDA_I);
  mp_impl->I2C0_SDA_O(I2C0_SDA_O);
  mp_impl->I2C0_SDA_T(I2C0_SDA_T);
  mp_impl->I2C0_SCL_I(I2C0_SCL_I);
  mp_impl->I2C0_SCL_O(I2C0_SCL_O);
  mp_impl->I2C0_SCL_T(I2C0_SCL_T);
  mp_impl->FCLK_RESET0_N(FCLK_RESET0_N);
  mp_impl->MIO(MIO);
  mp_impl->PS_SRSTB(PS_SRSTB);
  mp_impl->PS_CLK(PS_CLK);
  mp_impl->PS_PORB(PS_PORB);

}

void I2S_Core_TEST_bd_processing_system7_0_0::before_end_of_elaboration()
{
}

#endif // RIVIERA




#ifdef VCSSYSTEMC
I2S_Core_TEST_bd_processing_system7_0_0::I2S_Core_TEST_bd_processing_system7_0_0(const sc_core::sc_module_name& nm) : I2S_Core_TEST_bd_processing_system7_0_0_sc(nm),  I2C0_SDA_I("I2C0_SDA_I"), I2C0_SDA_O("I2C0_SDA_O"), I2C0_SDA_T("I2C0_SDA_T"), I2C0_SCL_I("I2C0_SCL_I"), I2C0_SCL_O("I2C0_SCL_O"), I2C0_SCL_T("I2C0_SCL_T"), FCLK_RESET0_N("FCLK_RESET0_N"), MIO("MIO"), PS_SRSTB("PS_SRSTB"), PS_CLK("PS_CLK"), PS_PORB("PS_PORB")
{
  // initialize pins
  mp_impl->I2C0_SDA_I(I2C0_SDA_I);
  mp_impl->I2C0_SDA_O(I2C0_SDA_O);
  mp_impl->I2C0_SDA_T(I2C0_SDA_T);
  mp_impl->I2C0_SCL_I(I2C0_SCL_I);
  mp_impl->I2C0_SCL_O(I2C0_SCL_O);
  mp_impl->I2C0_SCL_T(I2C0_SCL_T);
  mp_impl->FCLK_RESET0_N(FCLK_RESET0_N);
  mp_impl->MIO(MIO);
  mp_impl->PS_SRSTB(PS_SRSTB);
  mp_impl->PS_CLK(PS_CLK);
  mp_impl->PS_PORB(PS_PORB);
  // Instantiate Socket Stubs


}

void I2S_Core_TEST_bd_processing_system7_0_0::before_end_of_elaboration()
{
}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
I2S_Core_TEST_bd_processing_system7_0_0::I2S_Core_TEST_bd_processing_system7_0_0(const sc_core::sc_module_name& nm) : I2S_Core_TEST_bd_processing_system7_0_0_sc(nm),  I2C0_SDA_I("I2C0_SDA_I"), I2C0_SDA_O("I2C0_SDA_O"), I2C0_SDA_T("I2C0_SDA_T"), I2C0_SCL_I("I2C0_SCL_I"), I2C0_SCL_O("I2C0_SCL_O"), I2C0_SCL_T("I2C0_SCL_T"), FCLK_RESET0_N("FCLK_RESET0_N"), MIO("MIO"), PS_SRSTB("PS_SRSTB"), PS_CLK("PS_CLK"), PS_PORB("PS_PORB")
{
  // initialize pins
  mp_impl->I2C0_SDA_I(I2C0_SDA_I);
  mp_impl->I2C0_SDA_O(I2C0_SDA_O);
  mp_impl->I2C0_SDA_T(I2C0_SDA_T);
  mp_impl->I2C0_SCL_I(I2C0_SCL_I);
  mp_impl->I2C0_SCL_O(I2C0_SCL_O);
  mp_impl->I2C0_SCL_T(I2C0_SCL_T);
  mp_impl->FCLK_RESET0_N(FCLK_RESET0_N);
  mp_impl->MIO(MIO);
  mp_impl->PS_SRSTB(PS_SRSTB);
  mp_impl->PS_CLK(PS_CLK);
  mp_impl->PS_PORB(PS_PORB);
  // Instantiate Socket Stubs


}

void I2S_Core_TEST_bd_processing_system7_0_0::before_end_of_elaboration()
{
}

#endif // MTI_SYSTEMC




I2S_Core_TEST_bd_processing_system7_0_0::~I2S_Core_TEST_bd_processing_system7_0_0()
{
}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(I2S_Core_TEST_bd_processing_system7_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(I2S_Core_TEST_bd_processing_system7_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(I2S_Core_TEST_bd_processing_system7_0_0);
SC_REGISTER_BV(54);
#endif

