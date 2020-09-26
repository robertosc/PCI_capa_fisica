`timescale 1ms/100ps

`include "paralelo_serial.v"
`include "paralelo_serial0.v"
`include "paralelo_serial1.v"
`include "probador_paralelo_serial0.v"

    module banco_paralelo_serial0;
        wire [7:0] data_in, data2send;
        wire clk_4f, clk_32f, valid_in, data_out;

        paralelo_serial paraleloserial(
                                        .data_out(data_out),
                                        .data_in(data_in),
                                        .valid_in(valid_in),
                                        .clk_32f(clk_32f),
                                        .clk_4f(clk_4f),
        );

        paralelo_serial0 paraleloserial0(/*AUTOINST*/
					 // Outputs
					 .data2send		(data2send[7:0]),
					 // Inputs
					 .clk_4f		(clk_4f),
					 .data_in		(data_in[7:0]),
					 .valid_in		(valid_in));

        paralelo_serial1 paraleloserial1(.data_out(data_out),
                                        .clk_32f(clk_32f),
                                        .data2send(data_in));

        probador_paralelo_serial0 probador0(/*AUTOINST*/
					    // Outputs
					    .reset		(reset),
					    .valid_in		(valid_in),
                        .data_out (data_out),
					    .data_in		(data_in[7:0]),
					    .clk_4f		(clk_4f),
					    .clk_32f		(clk_32f),
					    // Inputs
					    .data2send		(data2send[7:0]));
    
    endmodule
