`timescale 1ms/100ps

`include "serial_paralelo.v"
`include "probador_serial_paralelo.v"
`include "../lib/cmos_cells.v"

    module banco_paralelo_serial;
		wire [7:0] data2send;
        wire [7:0] data_out;
		wire clk_4f, clk_32f, valid, valid_out, data_in, reset, active;

		serial_paralelo s_p(/*AUTOINST*/
				    // Outputs
				    .data2send		(data2send[7:0]),
				    .active		(active),
				    .valid_out		(valid_out),
				    .data_out		(data_out[7:0]),
				    // Inputs
				    .reset		(reset),
				    .valid		(valid),
				    .clk_4f		(clk_4f),
				    .clk_32f		(clk_32f),
				    .data_in		(data_in));



		probador_serial_paralelo prob_s_p(/*AUTOINST*/
						  // Outputs
						  .reset		(reset),
						  .valid		(valid),
						  .data_in		(data_in),
						  .clk_4f		(clk_4f),
						  .clk_32f		(clk_32f),
						  // Inputs
						  .data2send		(data2send[7:0]),
						  .data_out		(data_out[7:0]));

    endmodule
