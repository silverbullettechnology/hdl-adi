/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used             *
*     solely for design, simulation, implementation and creation of            *
*     design files limited to Xilinx devices or technologies. Use              *
*     with non-Xilinx devices or technologies is expressly prohibited          *
*     and immediately terminates your license.                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"            *
*     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                  *
*     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION          *
*     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION              *
*     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS                *
*     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                  *
*     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE         *
*     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY                 *
*     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                  *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS          *
*     FOR A PARTICULAR PURPOSE.                                                *
*                                                                              *
*     Xilinx products are not intended for use in life support                 *
*     appliances, devices, or systems. Use in such applications are            *
*     expressly prohibited.                                                    *
*                                                                              *
*     Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.               *
*******************************************************************************/

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG

  (* BOX_TYPE = "user_black_box" *)
  system
    system_i (
      .processing_system7_0_MIO ( processing_system7_0_MIO ),     // inout [53:0] processing_system7_0_MIO;
      .processing_system7_0_PS_SRSTB_pin ( processing_system7_0_PS_SRSTB_pin ),     // input processing_system7_0_PS_SRSTB_pin;
      .processing_system7_0_PS_CLK_pin ( processing_system7_0_PS_CLK_pin ),     // input processing_system7_0_PS_CLK_pin;
      .processing_system7_0_PS_PORB_pin ( processing_system7_0_PS_PORB_pin ),     // input processing_system7_0_PS_PORB_pin;
      .processing_system7_0_DDR_Clk ( processing_system7_0_DDR_Clk ),     // inout processing_system7_0_DDR_Clk;
      .processing_system7_0_DDR_Clk_n ( processing_system7_0_DDR_Clk_n ),     // inout processing_system7_0_DDR_Clk_n;
      .processing_system7_0_DDR_CKE ( processing_system7_0_DDR_CKE ),     // inout processing_system7_0_DDR_CKE;
      .processing_system7_0_DDR_CS_n ( processing_system7_0_DDR_CS_n ),     // inout processing_system7_0_DDR_CS_n;
      .processing_system7_0_DDR_RAS_n ( processing_system7_0_DDR_RAS_n ),     // inout processing_system7_0_DDR_RAS_n;
      .processing_system7_0_DDR_CAS_n ( processing_system7_0_DDR_CAS_n ),     // inout processing_system7_0_DDR_CAS_n;
      .processing_system7_0_DDR_WEB_pin ( processing_system7_0_DDR_WEB_pin ),     // output processing_system7_0_DDR_WEB_pin;
      .processing_system7_0_DDR_BankAddr ( processing_system7_0_DDR_BankAddr ),     // inout [2:0] processing_system7_0_DDR_BankAddr;
      .processing_system7_0_DDR_Addr ( processing_system7_0_DDR_Addr ),     // inout [14:0] processing_system7_0_DDR_Addr;
      .processing_system7_0_DDR_ODT ( processing_system7_0_DDR_ODT ),     // inout processing_system7_0_DDR_ODT;
      .processing_system7_0_DDR_DRSTB ( processing_system7_0_DDR_DRSTB ),     // inout processing_system7_0_DDR_DRSTB;
      .processing_system7_0_DDR_DQ ( processing_system7_0_DDR_DQ ),     // inout [31:0] processing_system7_0_DDR_DQ;
      .processing_system7_0_DDR_DM ( processing_system7_0_DDR_DM ),     // inout [3:0] processing_system7_0_DDR_DM;
      .processing_system7_0_DDR_DQS ( processing_system7_0_DDR_DQS ),     // inout [3:0] processing_system7_0_DDR_DQS;
      .processing_system7_0_DDR_DQS_n ( processing_system7_0_DDR_DQS_n ),     // inout [3:0] processing_system7_0_DDR_DQS_n;
      .processing_system7_0_DDR_VRN ( processing_system7_0_DDR_VRN ),     // inout processing_system7_0_DDR_VRN;
      .processing_system7_0_DDR_VRP ( processing_system7_0_DDR_VRP ),     // inout processing_system7_0_DDR_VRP;
      .rx_clk_in_p ( rx_clk_in_p ),     // input rx_clk_in_p;
      .rx_clk_in_n ( rx_clk_in_n ),     // input rx_clk_in_n;
      .rx_frame_in_p ( rx_frame_in_p ),     // input rx_frame_in_p;
      .rx_frame_in_n ( rx_frame_in_n ),     // input rx_frame_in_n;
      .rx_data_in_p ( rx_data_in_p ),     // input [5:0] rx_data_in_p;
      .rx_data_in_n ( rx_data_in_n ),     // input [5:0] rx_data_in_n;
      .tx_clk_out_p ( tx_clk_out_p ),     // output tx_clk_out_p;
      .tx_clk_out_n ( tx_clk_out_n ),     // output tx_clk_out_n;
      .tx_frame_out_p ( tx_frame_out_p ),     // output tx_frame_out_p;
      .tx_frame_out_n ( tx_frame_out_n ),     // output tx_frame_out_n;
      .tx_data_out_p ( tx_data_out_p ),     // output [5:0] tx_data_out_p;
      .tx_data_out_n ( tx_data_out_n ),     // output [5:0] tx_data_out_n;
      .spi_csn ( spi_csn ),     // output spi_csn;
      .spi_clk ( spi_clk ),     // output spi_clk;
      .spi_mosi ( spi_mosi ),     // output spi_mosi;
      .spi_miso ( spi_miso ),     // input spi_miso;
      .ps7_gpio ( ps7_gpio ),     // inout [5:0] ps7_gpio;
      .AXI_GPIO_I ( AXI_GPIO_I )     // input [23:0] AXI_GPIO_I;
    );

// INST_TAG_END ------ End INSTANTIATION Template ---------

