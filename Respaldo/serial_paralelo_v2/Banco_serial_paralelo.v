`timescale 1ms/100ps

`include "serial_paralelo.v"
`include "sintetizado_serial_paralelo.v"
`include "probador_serial_paralelo.v"
`include "../lib/cmos_cells.v"

    module Banco_serial_paralelo;
		wire [7:0] data2send;
        wire [7:0] data_out;
        wire [7:0]  data_out_sintetizado;
		wire clk_4f, clk_32f, valid_out, data_in, reset, active, active_sintetizado,valid_out_sintetizado;

		serial_paralelo s_p(/*AUTOINST*/
				    // Outputs
				    .active		(active),
				    .valid_out		(valid_out),
				    .data_out		(data_out[7:0]),
				    // Inputs
				    .reset		(reset),
				    .clk_4f		(clk_4f),
				    .clk_32f		(clk_32f),
				    .data_in		(data_in));
		
		sintetizado_serial_paralelo s_s_p(/*AUTOINST*/
						  // Outputs
						  .active		(active_sintetizado),
						  .data_out		(data_out_sintetizado[7:0]),
						  .valid_out		(valid_out_sintetizado),
						  // Inputs
						  .clk_32f		(clk_32f),
						  .clk_4f		(clk_4f),
						  .data_in		(data_in),
						  .reset		(reset));



		probador_serial_paralelo prob_s_p(/*AUTOINST*/
						  // Outputs
						  .reset		(reset),
						  .data_in		(data_in),
						  .clk_4f		(clk_4f),
						  .clk_32f		(clk_32f),
						  // Inputs
						  .data_out		(data_out[7:0]),
						  .active		(active),
						  .valid_out		(valid_out),
						  .data_out_sintetizado	(data_out_sintetizado[7:0]),
						  .active_sintetizado	(active_sintetizado),
						  .valid_out_sintetizado(valid_out_sintetizado));

    endmodule
