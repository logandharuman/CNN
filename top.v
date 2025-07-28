`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2025 18:55:43
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top (
  input  wire        ap_clk,
  input  wire        ap_rst,
  input  wire        ap_start,
  output wire        ap_done,
  output wire        ap_idle,
  output wire        ap_ready,

  // Input Memory Interface
  output wire        input_r_ce0,
  output wire        input_r_we0,
  output wire [9:0]  input_r_address0,
  output wire [15:0] input_r_d0,
  input  wire [15:0] input_r_q0,

  output wire        input_r_ce1,
  output wire        input_r_we1,
  output wire [9:0]  input_r_address1,
  output wire [15:0] input_r_d1,
  input  wire [15:0] input_r_q1,

  // Output Memory Interface
  output wire        output_r_ce0,
  output wire        output_r_we0,
  output wire [3:0]  output_r_address0,
  output wire [15:0] output_r_d0,
  input  wire [15:0] output_r_q0,

  output wire        output_r_ce1,
  output wire        output_r_we1,
  output wire [3:0]  output_r_address1,
  output wire [15:0] output_r_d1,
  input  wire [15:0] output_r_q1
);

  // Instantiate cnn_top_0 IP core
  cnn_top_0 inst_cnn_top_0 (
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),

    .input_r_ce0(input_r_ce0),
    .input_r_we0(input_r_we0),
    .input_r_address0(input_r_address0),
    .input_r_d0(input_r_d0),
    .input_r_q0(input_r_q0),

    .input_r_ce1(input_r_ce1),
    .input_r_we1(input_r_we1),
    .input_r_address1(input_r_address1),
    .input_r_d1(input_r_d1),
    .input_r_q1(input_r_q1),

    .output_r_ce0(output_r_ce0),
    .output_r_we0(output_r_we0),
    .output_r_address0(output_r_address0),
    .output_r_d0(output_r_d0),
    .output_r_q0(output_r_q0),

    .output_r_ce1(output_r_ce1),
    .output_r_we1(output_r_we1),
    .output_r_address1(output_r_address1),
    .output_r_d1(output_r_d1),
    .output_r_q1(output_r_q1)
  );

endmodule

