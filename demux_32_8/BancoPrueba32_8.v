`timescale 1ms/100ps

`include "cmos_cells.v"
`include "demux32_8.v"
`include "probadordemux32_8.v"
`include "sintetizado32a8_cmos.v"

module BancoPrueba32_8;
    
    wire [7:0] data_out;
    wire [7:0] data_out_sint;
    wire [31:0] lane_0;
    wire clk_f, clk_4f, valid_0, valid_out, valid_out_sint, reset;

    demux32_8 demuxcond(/*AUTOINST*/
		    // Outputs
		    .data_out		(data_out[7:0]),
		    .valid_out		(valid_out),
		    // Inputs
			.reset 		(reset),
		    .clk_4f		(clk_4f),
		    .lane_0		(lane_0[31:0]),
		    .valid_0		(valid_0));

	sintetizado32a8_cmos demuxsint(/*AUTOINST*/
		    // Outputs
		    .data_out_estructural		(data_out_sint[7:0]),
		    .valid_out_estructural		(valid_out_sint),
		    // Inputs
			.reset 		(reset),
		    .clk_4f		(clk_4f),
		    .lane_0		(lane_0[31:0]),
		    .valid_0		(valid_0));

    probadordemux32_8 prob(/*AUTOINST*/
			   // Outputs
			   .reset 		(reset),
			   .clk_f		(clk_f),
			   .clk_4f		(clk_4f),
			   .lane_0		(lane_0[31:0]),
			   .valid_0		(valid_0),
			   // Inputs
			   .data_out		(data_out[7:0]),
			   .data_out_sint		(data_out_sint[7:0]),
			   .valid_out			(valid_out),
			   .valid_out_sint		(valid_out_sint));

endmodule
