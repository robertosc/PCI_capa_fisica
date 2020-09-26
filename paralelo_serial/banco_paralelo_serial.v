`timescale 1ms/100ps

`include "paralelo_serial.v"
`include "probador_paralelo_serial.v"
`include "sintetizado_paralelo_serial_cmos.v"
`include "cmos_cells.v"

    module banco_paralelo_serial;
    	wire [7:0] data_in, data2send, data2send_estructural;
    	wire clk_4f, clk_32f, valid_in, data_out, data_out_estructural, reset;

    	paralelo_serial p_s(/*AUTOINST*/
			    // Outputs
			    .data2send		(data2send[7:0]),
			    .data_out		(data_out),
			    // Inputs
			    .clk_4f		(clk_4f),
			    .clk_32f		(clk_32f),
			    .data_in		(data_in[7:0]),
			    .valid_in		(valid_in),
			    .reset		(reset));

		
		sintetizado_paralelo_serial_cmos s_p_s(/*AUTOINST*/
						       // Outputs
						    	.data2send_estructural(data2send_estructural[7:0]),
						    	.data_out_estructural(data_out_estructural),
						       // Inputs
						       .clk_32f		(clk_32f),
						       .clk_4f		(clk_4f),
						       .data_in		(data_in[7:0]),
						       .reset		(reset),
						       .valid_in	(valid_in));


    	probador_paralelo_serial prob_paralelo_serial(/*AUTOINST*/
						      // Outputs
						      .reset		(reset),
						      .valid_in		(valid_in),
						      .data_in		(data_in[7:0]),
						      .clk_4f		(clk_4f),
						      .clk_32f		(clk_32f),
						      // Inputs
							.data2send	(data2send[7:0]),
							.data2send_estructural(data2send_estructural[7:0]),
						      .data_out		(data_out),
						      .data_out_estructural(data_out_estructural));

    endmodule