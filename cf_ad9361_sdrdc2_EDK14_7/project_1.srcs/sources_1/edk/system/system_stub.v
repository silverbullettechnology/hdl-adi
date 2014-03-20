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
    rx_clk0_in_p,
    rx_clk0_in_n,
    rx_frame0_in_p,
    rx_frame0_in_n,
    rx_data0_in_p,
    rx_data0_in_n,
    tx_clk0_out_p,
    tx_clk0_out_n,
    tx_frame0_out_p,
    tx_frame0_out_n,
    tx_data0_out_p,
    tx_data0_out_n,
    rx_clk1_in_p,
    rx_clk1_in_n,
    rx_frame1_in_p,
    rx_frame1_in_n,
    rx_data1_in_p,
    rx_data1_in_n,
    tx_clk1_out_p,
    tx_clk1_out_n,
    tx_frame1_out_p,
    tx_frame1_out_n,
    tx_data1_out_p,
    tx_data1_out_n,
    spi_clk,
    spi_mosi,
    spi_miso,
    spi_cs0,
    spi_cs1,
    AXI_GPIO_I,
    ps7_gpio,
    rgmii_txd,
    rgmii_tx_ctl,
    rgmii_txc,
    rgmii_rxd,
    rgmii_rx_ctl,
    rgmii_rxc,
    MDC,
    gmii_to_rgmii_0_MDIO
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
  input rx_clk0_in_p;
  input rx_clk0_in_n;
  input rx_frame0_in_p;
  input rx_frame0_in_n;
  input [5:0] rx_data0_in_p;
  input [5:0] rx_data0_in_n;
  output tx_clk0_out_p;
  output tx_clk0_out_n;
  output tx_frame0_out_p;
  output tx_frame0_out_n;
  output [5:0] tx_data0_out_p;
  output [5:0] tx_data0_out_n;
  input rx_clk1_in_p;
  input rx_clk1_in_n;
  input rx_frame1_in_p;
  input rx_frame1_in_n;
  input [5:0] rx_data1_in_p;
  input [5:0] rx_data1_in_n;
  output tx_clk1_out_p;
  output tx_clk1_out_n;
  output tx_frame1_out_p;
  output tx_frame1_out_n;
  output [5:0] tx_data1_out_p;
  output [5:0] tx_data1_out_n;
  output spi_clk;
  output spi_mosi;
  input spi_miso;
  output spi_cs0;
  output spi_cs1;
  input [23:0] AXI_GPIO_I;
  inout [39:0] ps7_gpio;
  output [3:0] rgmii_txd;
  output rgmii_tx_ctl;
  output rgmii_txc;
  input [3:0] rgmii_rxd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output MDC;
  inout gmii_to_rgmii_0_MDIO;

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
      .rx_clk0_in_p ( rx_clk0_in_p ),
      .rx_clk0_in_n ( rx_clk0_in_n ),
      .rx_frame0_in_p ( rx_frame0_in_p ),
      .rx_frame0_in_n ( rx_frame0_in_n ),
      .rx_data0_in_p ( rx_data0_in_p ),
      .rx_data0_in_n ( rx_data0_in_n ),
      .tx_clk0_out_p ( tx_clk0_out_p ),
      .tx_clk0_out_n ( tx_clk0_out_n ),
      .tx_frame0_out_p ( tx_frame0_out_p ),
      .tx_frame0_out_n ( tx_frame0_out_n ),
      .tx_data0_out_p ( tx_data0_out_p ),
      .tx_data0_out_n ( tx_data0_out_n ),
      .rx_clk1_in_p ( rx_clk1_in_p ),
      .rx_clk1_in_n ( rx_clk1_in_n ),
      .rx_frame1_in_p ( rx_frame1_in_p ),
      .rx_frame1_in_n ( rx_frame1_in_n ),
      .rx_data1_in_p ( rx_data1_in_p ),
      .rx_data1_in_n ( rx_data1_in_n ),
      .tx_clk1_out_p ( tx_clk1_out_p ),
      .tx_clk1_out_n ( tx_clk1_out_n ),
      .tx_frame1_out_p ( tx_frame1_out_p ),
      .tx_frame1_out_n ( tx_frame1_out_n ),
      .tx_data1_out_p ( tx_data1_out_p ),
      .tx_data1_out_n ( tx_data1_out_n ),
      .spi_clk ( spi_clk ),
      .spi_mosi ( spi_mosi ),
      .spi_miso ( spi_miso ),
      .spi_cs0 ( spi_cs0 ),
      .spi_cs1 ( spi_cs1 ),
      .AXI_GPIO_I ( AXI_GPIO_I ),
      .ps7_gpio ( ps7_gpio ),
      .rgmii_txd ( rgmii_txd ),
      .rgmii_tx_ctl ( rgmii_tx_ctl ),
      .rgmii_txc ( rgmii_txc ),
      .rgmii_rxd ( rgmii_rxd ),
      .rgmii_rx_ctl ( rgmii_rx_ctl ),
      .rgmii_rxc ( rgmii_rxc ),
      .MDC ( MDC ),
      .gmii_to_rgmii_0_MDIO ( gmii_to_rgmii_0_MDIO )
    );

endmodule

