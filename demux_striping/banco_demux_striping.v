`timescale 1ms/100ps

`include "probador_demux_striping.v"
`include "demux_striping.v"

module banco_demux_striping;
	wire [31:0] data_input, lane_0, lane_1;
	wire clk_2f, valid_out0, valid_out1, valid_0, valid_1;


	demux_striping demuxs(/*AUTOINST*/
			      // Outputs
			      .lane_0		(lane_0[31:0]),
			      .lane_1		(lane_1[31:0]),
			      .valid_out0	(valid_out0),
			      .valid_out1	(valid_out1),
			      // Inputs
			      .clk_2f		(clk_2f),
			      .data_input	(data_input[31:0]),
			      .valid_0		(valid_0),
			      .valid_1		(valid_1));


	probador_demux_striping probador(/*AUTOINST*/
					 // Outputs
					 .valid_0		(valid_0),
					 .valid_1		(valid_1),
					 .clk_2f		(clk_2f),
					 // Inputs
					 .lane_0		(lane_0[31:0]),
					 .lane_1		(lane_1[31:0]),
					 .data_input		(data_input[31:0]),
					 .valid_out0		(valid_out0),
					 .valid_out1		(valid_out1));


endmodule
