// ***************************************************************************
// ***************************************************************************
// Copyright 2011(c) Analog Devices, Inc.
// 
// All rights reserved.
// 
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//     - Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     - Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in
//       the documentation and/or other materials provided with the
//       distribution.
//     - Neither the name of Analog Devices, Inc. nor the names of its
//       contributors may be used to endorse or promote products derived
//       from this software without specific prior written permission.
//     - The use of this software may or may not infringe the patent rights
//       of one or more patent holders.  This license does not release you
//       from the requirement that you obtain separate licenses from these
//       patent holders to use this software.
//     - Use of the software either in source or binary form, must be run
//       on or directly connected to an Analog Devices Inc. component.
//    
// THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
// INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A
// PARTICULAR PURPOSE ARE DISCLAIMED.
//
// IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, INTELLECTUAL PROPERTY
// RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR 
// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
// STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF 
// THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// ***************************************************************************
// ***************************************************************************
// ***************************************************************************
// ***************************************************************************

`timescale 1ps/1ps

module cf_mul (

  clk,
  data_a,
  data_b,
  data_p,
  ddata_in,
  ddata_out);

  parameter DELAY_DATA_WIDTH = 16;
  parameter DW = DELAY_DATA_WIDTH - 1;

  input           clk;
  input   [15:0]  data_a;
  input   [15:0]  data_b;
  output  [31:0]  data_p;
  input   [DW:0]  ddata_in;
  output  [DW:0]  ddata_out;

  reg     [DW:0]  p1_ddata = 'd0;
  reg     [31:0]  p1_data_p_0 = 'd0;
  reg     [31:0]  p1_data_p_1 = 'd0;
  reg     [31:0]  p1_data_p_2 = 'd0;
  reg     [31:0]  p1_data_p_3 = 'd0;
  reg     [31:0]  p1_data_p_4 = 'd0;
  reg     [31:0]  p1_data_p_5 = 'd0;
  reg     [31:0]  p1_data_p_6 = 'd0;
  reg     [31:0]  p1_data_p_7 = 'd0;
  reg     [31:0]  p1_data_p_8 = 'd0;
  reg     [DW:0]  p2_ddata = 'd0;
  reg     [31:0]  p2_data_p_0 = 'd0;
  reg     [31:0]  p2_data_p_1 = 'd0;
  reg     [31:0]  p2_data_p_2 = 'd0;
  reg     [31:0]  p2_data_p_3 = 'd0;
  reg     [DW:0]  p3_ddata = 'd0;
  reg     [31:0]  p3_data_p_0 = 'd0;
  reg     [31:0]  p3_data_p_1 = 'd0;
  reg     [DW:0]  ddata_out = 'd0;
  reg     [31:0]  data_p = 'd0;

  wire    [16:0]  p1_data_a_1p_17_s;
  wire    [16:0]  p1_data_a_1n_17_s;
  wire    [31:0]  p1_data_a_1p_s;
  wire    [31:0]  p1_data_a_1n_s;
  wire    [31:0]  p1_data_a_2p_s;
  wire    [31:0]  p1_data_a_2n_s;

  assign p1_data_a_1p_17_s = {1'b0, data_a};
  assign p1_data_a_1n_17_s = ~p1_data_a_1p_17_s + 1'b1;

  assign p1_data_a_1p_s = {{15{p1_data_a_1p_17_s[16]}}, p1_data_a_1p_17_s};
  assign p1_data_a_1n_s = {{15{p1_data_a_1n_17_s[16]}}, p1_data_a_1n_17_s};
  assign p1_data_a_2p_s = {{14{p1_data_a_1p_17_s[16]}}, p1_data_a_1p_17_s, 1'b0};
  assign p1_data_a_2n_s = {{14{p1_data_a_1n_17_s[16]}}, p1_data_a_1n_17_s, 1'b0};

  always @(posedge clk) begin
    p1_ddata <= ddata_in;
    case (data_b[1:0])
      2'b11: p1_data_p_0 <= p1_data_a_1n_s;
      2'b10: p1_data_p_0 <= p1_data_a_2n_s;
      2'b01: p1_data_p_0 <= p1_data_a_1p_s;
      default: p1_data_p_0 <= 32'd0;
    endcase
    case (data_b[3:1])
      3'b011: p1_data_p_1 <= {p1_data_a_2p_s[29:0], 2'd0};
      3'b100: p1_data_p_1 <= {p1_data_a_2n_s[29:0], 2'd0};
      3'b001: p1_data_p_1 <= {p1_data_a_1p_s[29:0], 2'd0};
      3'b010: p1_data_p_1 <= {p1_data_a_1p_s[29:0], 2'd0};
      3'b101: p1_data_p_1 <= {p1_data_a_1n_s[29:0], 2'd0};
      3'b110: p1_data_p_1 <= {p1_data_a_1n_s[29:0], 2'd0};
      default: p1_data_p_1 <= 32'd0;
    endcase
    case (data_b[5:3])
      3'b011: p1_data_p_2 <= {p1_data_a_2p_s[27:0], 4'd0};
      3'b100: p1_data_p_2 <= {p1_data_a_2n_s[27:0], 4'd0};
      3'b001: p1_data_p_2 <= {p1_data_a_1p_s[27:0], 4'd0};
      3'b010: p1_data_p_2 <= {p1_data_a_1p_s[27:0], 4'd0};
      3'b101: p1_data_p_2 <= {p1_data_a_1n_s[27:0], 4'd0};
      3'b110: p1_data_p_2 <= {p1_data_a_1n_s[27:0], 4'd0};
      default: p1_data_p_2 <= 32'd0;
    endcase
    case (data_b[7:5])
      3'b011: p1_data_p_3 <= {p1_data_a_2p_s[25:0], 6'd0};
      3'b100: p1_data_p_3 <= {p1_data_a_2n_s[25:0], 6'd0};
      3'b001: p1_data_p_3 <= {p1_data_a_1p_s[25:0], 6'd0};
      3'b010: p1_data_p_3 <= {p1_data_a_1p_s[25:0], 6'd0};
      3'b101: p1_data_p_3 <= {p1_data_a_1n_s[25:0], 6'd0};
      3'b110: p1_data_p_3 <= {p1_data_a_1n_s[25:0], 6'd0};
      default: p1_data_p_3 <= 32'd0;
    endcase
    case (data_b[9:7])
      3'b011: p1_data_p_4 <= {p1_data_a_2p_s[23:0], 8'd0};
      3'b100: p1_data_p_4 <= {p1_data_a_2n_s[23:0], 8'd0};
      3'b001: p1_data_p_4 <= {p1_data_a_1p_s[23:0], 8'd0};
      3'b010: p1_data_p_4 <= {p1_data_a_1p_s[23:0], 8'd0};
      3'b101: p1_data_p_4 <= {p1_data_a_1n_s[23:0], 8'd0};
      3'b110: p1_data_p_4 <= {p1_data_a_1n_s[23:0], 8'd0};
      default: p1_data_p_4 <= 32'd0;
    endcase
    case (data_b[11:9])
      3'b011: p1_data_p_5 <= {p1_data_a_2p_s[21:0], 10'd0};
      3'b100: p1_data_p_5 <= {p1_data_a_2n_s[21:0], 10'd0};
      3'b001: p1_data_p_5 <= {p1_data_a_1p_s[21:0], 10'd0};
      3'b010: p1_data_p_5 <= {p1_data_a_1p_s[21:0], 10'd0};
      3'b101: p1_data_p_5 <= {p1_data_a_1n_s[21:0], 10'd0};
      3'b110: p1_data_p_5 <= {p1_data_a_1n_s[21:0], 10'd0};
      default: p1_data_p_5 <= 32'd0;
    endcase
    case (data_b[13:11])
      3'b011: p1_data_p_6 <= {p1_data_a_2p_s[19:0], 12'd0};
      3'b100: p1_data_p_6 <= {p1_data_a_2n_s[19:0], 12'd0};
      3'b001: p1_data_p_6 <= {p1_data_a_1p_s[19:0], 12'd0};
      3'b010: p1_data_p_6 <= {p1_data_a_1p_s[19:0], 12'd0};
      3'b101: p1_data_p_6 <= {p1_data_a_1n_s[19:0], 12'd0};
      3'b110: p1_data_p_6 <= {p1_data_a_1n_s[19:0], 12'd0};
      default: p1_data_p_6 <= 32'd0;
    endcase
    case (data_b[15:13])
      3'b011: p1_data_p_7 <= {p1_data_a_2p_s[17:0], 14'd0};
      3'b100: p1_data_p_7 <= {p1_data_a_2n_s[17:0], 14'd0};
      3'b001: p1_data_p_7 <= {p1_data_a_1p_s[17:0], 14'd0};
      3'b010: p1_data_p_7 <= {p1_data_a_1p_s[17:0], 14'd0};
      3'b101: p1_data_p_7 <= {p1_data_a_1n_s[17:0], 14'd0};
      3'b110: p1_data_p_7 <= {p1_data_a_1n_s[17:0], 14'd0};
      default: p1_data_p_7 <= 32'd0;
    endcase
    case (data_b[15])
      1'b1: p1_data_p_8 <= {p1_data_a_1p_s[15:0], 16'd0};
      default: p1_data_p_8 <= 32'd0;
    endcase
  end

  always @(posedge clk) begin
    p2_ddata <= p1_ddata;
    p2_data_p_0 <= p1_data_p_0 + p1_data_p_4 + p1_data_p_8;
    p2_data_p_1 <= p1_data_p_1 + p1_data_p_5;
    p2_data_p_2 <= p1_data_p_2 + p1_data_p_6;
    p2_data_p_3 <= p1_data_p_3 + p1_data_p_7;
  end

  always @(posedge clk) begin
    p3_ddata <= p2_ddata;
    p3_data_p_0 <= p2_data_p_0 + p2_data_p_2;
    p3_data_p_1 <= p2_data_p_1 + p2_data_p_3;
  end

  always @(posedge clk) begin
    ddata_out <= p3_ddata;
    data_p <= p3_data_p_0 + p3_data_p_1;
  end

endmodule

// ***************************************************************************
// ***************************************************************************
