`timescale 1ms/100ps

`include "demux32_8.v"
`include "probadordemux32_8.v"

module BancoPrueba32_8;
    
    wire [7:0] data_out;
    wire [31:0] lane_0;
    wire clk_f, clk_4f, valid_0, valid_out;

    demux32_8 demux(/*AUTOINST*/
		    // Outputs
		    .data_out		(data_out[7:0]),
		    .valid_out		(valid_out),
		    // Inputs
		    .clk_4f		(clk_4f),
		    .lane_0		(lane_0[31:0]),
		    .valid_0		(valid_0));

    probadordemux32_8 prob(/*AUTOINST*/
			   // Outputs
			   .clk_f		(clk_f),
			   .clk_4f		(clk_4f),
			   .lane_0		(lane_0[31:0]),
			   .valid_0		(valid_0),
			   // Inputs
			   .data_out		(data_out[7:0]),
			   .valid_out		(valid_out));

endmodule
