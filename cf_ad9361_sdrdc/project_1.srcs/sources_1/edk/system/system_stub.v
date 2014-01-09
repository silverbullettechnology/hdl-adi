//-----------------------------------------------------------------------------
// system_stub.v
//-----------------------------------------------------------------------------

module system_stub
  (
    processing_system7_0_MIO,
    processing_system7_0_PS_SRSTB_pin,
    processing_system7_0_PS_CLK_pin,
    processing_system7_0_PS_PORB_pin,
    processing_system7_0_DDR_Clk,
    processing_system7_0_DDR_Clk_n,
    processing_system7_0_DDR_CKE,
    processing_system7_0_DDR_CS_n,
    processing_system7_0_DDR_RAS_n,
    processing_system7_0_DDR_CAS_n,
    processing_system7_0_DDR_WEB_pin,
    processing_system7_0_DDR_BankAddr,
    processing_system7_0_DDR_Addr,
    processing_system7_0_DDR_ODT,
    processing_system7_0_DDR_DRSTB,
    processing_system7_0_DDR_DQ,
    processing_system7_0_DDR_DM,
    processing_system7_0_DDR_DQS,
    processing_system7_0_DDR_DQS_n,
    processing_system7_0_DDR_VRN,
    processing_system7_0_DDR_VRP,
    rx_clk_in_p,
    rx_clk_in_n,
    rx_frame_in_p,
    rx_frame_in_n,
    rx_data_in_p,
    rx_data_in_n,
    tx_clk_out_p,
    tx_clk_out_n,
    tx_frame_out_p,
    tx_frame_out_n,
    tx_data_out_p,
    tx_data_out_n,
    spi_csn,
    spi_clk,
    spi_mosi,
    spi_miso,
    ps7_gpio,
    AXI_GPIO_I
  );
  inout [53:0] processing_system7_0_MIO;
  input processing_system7_0_PS_SRSTB_pin;
  input processing_system7_0_PS_CLK_pin;
  input processing_system7_0_PS_PORB_pin;
  inout processing_system7_0_DDR_Clk;
  inout processing_system7_0_DDR_Clk_n;
  inout processing_system7_0_DDR_CKE;
  inout processing_system7_0_DDR_CS_n;
  inout processing_system7_0_DDR_RAS_n;
  inout processing_system7_0_DDR_CAS_n;
  output processing_system7_0_DDR_WEB_pin;
  inout [2:0] processing_system7_0_DDR_BankAddr;
  inout [14:0] processing_system7_0_DDR_Addr;
  inout processing_system7_0_DDR_ODT;
  inout processing_system7_0_DDR_DRSTB;
  inout [31:0] processing_system7_0_DDR_DQ;
  inout [3:0] processing_system7_0_DDR_DM;
  inout [3:0] processing_system7_0_DDR_DQS;
  inout [3:0] processing_system7_0_DDR_DQS_n;
  inout processing_system7_0_DDR_VRN;
  inout processing_system7_0_DDR_VRP;
  input rx_clk_in_p;
  input rx_clk_in_n;
  input rx_frame_in_p;
  input rx_frame_in_n;
  input [5:0] rx_data_in_p;
  input [5:0] rx_data_in_n;
  output tx_clk_out_p;
  output tx_clk_out_n;
  output tx_frame_out_p;
  output tx_frame_out_n;
  output [5:0] tx_data_out_p;
  output [5:0] tx_data_out_n;
  output spi_csn;
  output spi_clk;
  output spi_mosi;
  input spi_miso;
  inout [5:0] ps7_gpio;
  input [23:0] AXI_GPIO_I;

  (* BOX_TYPE = "user_black_box" *)
  system
    system_i (
      .processing_system7_0_MIO ( processing_system7_0_MIO ),
      .processing_system7_0_PS_SRSTB_pin ( processing_system7_0_PS_SRSTB_pin ),
      .processing_system7_0_PS_CLK_pin ( processing_system7_0_PS_CLK_pin ),
      .processing_system7_0_PS_PORB_pin ( processing_system7_0_PS_PORB_pin ),
      .processing_system7_0_DDR_Clk ( processing_system7_0_DDR_Clk ),
      .processing_system7_0_DDR_Clk_n ( processing_system7_0_DDR_Clk_n ),
      .processing_system7_0_DDR_CKE ( processing_system7_0_DDR_CKE ),
      .processing_system7_0_DDR_CS_n ( processing_system7_0_DDR_CS_n ),
      .processing_system7_0_DDR_RAS_n ( processing_system7_0_DDR_RAS_n ),
      .processing_system7_0_DDR_CAS_n ( processing_system7_0_DDR_CAS_n ),
      .processing_system7_0_DDR_WEB_pin ( processing_system7_0_DDR_WEB_pin ),
      .processing_system7_0_DDR_BankAddr ( processing_system7_0_DDR_BankAddr ),
      .processing_system7_0_DDR_Addr ( processing_system7_0_DDR_Addr ),
      .processing_system7_0_DDR_ODT ( processing_system7_0_DDR_ODT ),
      .processing_system7_0_DDR_DRSTB ( processing_system7_0_DDR_DRSTB ),
      .processing_system7_0_DDR_DQ ( processing_system7_0_DDR_DQ ),
      .processing_system7_0_DDR_DM ( processing_system7_0_DDR_DM ),
      .processing_system7_0_DDR_DQS ( processing_system7_0_DDR_DQS ),
      .processing_system7_0_DDR_DQS_n ( processing_system7_0_DDR_DQS_n ),
      .processing_system7_0_DDR_VRN ( processing_system7_0_DDR_VRN ),
      .processing_system7_0_DDR_VRP ( processing_system7_0_DDR_VRP ),
      .rx_clk_in_p ( rx_clk_in_p ),
      .rx_clk_in_n ( rx_clk_in_n ),
      .rx_frame_in_p ( rx_frame_in_p ),
      .rx_frame_in_n ( rx_frame_in_n ),
      .rx_data_in_p ( rx_data_in_p ),
      .rx_data_in_n ( rx_data_in_n ),
      .tx_clk_out_p ( tx_clk_out_p ),
      .tx_clk_out_n ( tx_clk_out_n ),
      .tx_frame_out_p ( tx_frame_out_p ),
      .tx_frame_out_n ( tx_frame_out_n ),
      .tx_data_out_p ( tx_data_out_p ),
      .tx_data_out_n ( tx_data_out_n ),
      .spi_csn ( spi_csn ),
      .spi_clk ( spi_clk ),
      .spi_mosi ( spi_mosi ),
      .spi_miso ( spi_miso ),
      .ps7_gpio ( ps7_gpio ),
      .AXI_GPIO_I ( AXI_GPIO_I )
    );

endmodule

