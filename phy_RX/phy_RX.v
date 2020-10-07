`include "../serial_paralelo/serial_paralelo.v"
`include "mux_striping.v"
`include "demux_8_32.v"

module phy_RX(	input data_paralelo_serial_0,
				input data_paralelo_serial_1,
				input reset,
				input clk_f,
				input clk_2f,
				input clk_4f,
				input clk_32f,
				output active_serial_paralelo_1,
				output active_serial_paralelo_0,
				output [31:0] data_output,
				output valid_out);

	wire clk_4f, clk_32f, clk_f, reset;

	wire [7:0] data2send_0, data2send_1;

	wire [7:0] data_out_0, data_out_1;

	wire [7:0] data_serial_paralelo_0, data_serial_paralelo_1;

	wire valid_serial_paralelo_0, valid_serial_paralelo_1, valid_demux_8_32_0, valid_demux_8_32_1;
	
	wire [31:0] data_demux_8_32_0, data_demux_8_32_1;

   	serial_paralelo sp0 (/*AUTOINST*/
			     // Outputs
			     .active_serial_paralelo(active_serial_paralelo_0),
			     .valid_serial_paralelo(valid_serial_paralelo_0),
			     .data_serial_paralelo(data_serial_paralelo_0[7:0]),
			     // Inputs
			     .reset		(reset),
			     .clk_4f		(clk_4f),
			     .clk_32f		(clk_32f),
			     .data_paralelo_serial(data_paralelo_serial_0));

   	serial_paralelo sp1 (/*AUTOINST*/
			     // Outputs
			     .active_serial_paralelo(active_serial_paralelo_1),
			     .valid_serial_paralelo(valid_serial_paralelo_1),
			     .data_serial_paralelo(data_serial_paralelo_1[7:0]),
			     // Inputs
			     .reset		(reset),
			     .clk_4f		(clk_4f),
			     .clk_32f		(clk_32f),
			     .data_paralelo_serial(data_paralelo_serial_1));

	demux_8_32 demux_final_0 (/*AUTOINST*/
				    // Outputs
				    .data_demux_8_32	(data_demux_8_32_0[31:0]),
				    .valid_demux_8_32	(valid_demux_8_32_0),
				    // Inputs
				    .clk_4f		(clk_4f),
				    .data_serial_paralelo(data_serial_paralelo_0[7:0]),
				    .valid_serial_paralelo(valid_serial_paralelo_0),
				    .reset		(reset));

   	demux_8_32 demux_final_1 (/*AUTOINST*/
				    // Outputs
				    .data_demux_8_32	(data_demux_8_32_1[31:0]),
				    .valid_demux_8_32	(valid_demux_8_32_1),
				    // Inputs
				    .clk_4f		(clk_4f),
				    .data_serial_paralelo(data_serial_paralelo_1[7:0]),
				    .valid_serial_paralelo(valid_serial_paralelo_1),
				    .reset		(reset));
   
   	mux_striping mux_stp(/*AUTOINST*/
			     // Outputs
			     .data_output	(data_output[31:0]),
			     .valid_out		(valid_out),
			     // Inputs
			     .clk_2f		(clk_2f),
			     .data_demux_8_32_0	(data_demux_8_32_0[31:0]),
			     .data_demux_8_32_1	(data_demux_8_32_1[31:0]),
			     .valid_demux_8_32_0(valid_demux_8_32_0),
			     .valid_demux_8_32_1(valid_demux_8_32_1),
			     .reset		(reset));
   
endmodule
