`timescale 1ms/100ps

`include "probador_demux_striping.v"
`include "demux_striping.v"
`include "demux_striping_sintetizado.v" 

module banco_demux_striping;
	wire [31:0] data_input, lane_0, lane_1, lane_sintetizado0, lane_sintetizado1;
	wire clk_2f, valid_out0, valid_out_sintetizado0, valid_out1, valid_out_sintetizado1, valid_in;


	demux_striping demuxs(/*AUTOINST*/
			      // Outputs
			      .lane_0		(lane_0[31:0]),
			      .lane_1		(lane_1[31:0]),
			      .valid_out0	(valid_out0),
			      .valid_out1	(valid_out1),
			      // Inputs
			      .clk_2f		(clk_2f),
			      .data_input	(data_input[31:0]),
			      .valid_in		(valid_in));
	demux_striping_sintetizado sintetizado (/*AUTOINST*/
						// Outputs
						.lane_0		(lane_sintetizado0[31:0]),
						.lane_1		(lane_sintetizado1[31:0]),
						.valid_out0	(valid_out_sintetizado0),
						.valid_out1	(valid_out_sintetizado1),
						// Inputs
						.clk_2f		(clk_2f),
						.data_input	(data_input[31:0]),
						.valid_in	(valid_in));


	probador_demux_striping probador(/*AUTOINST*/
					 // Outputs
					 .valid_in		(valid_in),
					 .clk_2f		(clk_2f),
					 .data_input		(data_input[31:0]),
					 // Inputs
					 .lane_0		(lane_0[31:0]),
					 .lane_1		(lane_1[31:0]),
					 .lane_sintetizado0	(lane_sintetizado0[31:0]),
					 .lane_sintetizado1	(lane_sintetizado1[31:0]),
					 .valid_out0		(valid_out0),
					 .valid_out1		(valid_out1),
					 .valid_out_sintetizado0 (valid_out_sintetizado0),
					 .valid_out_sintetizado1 (valid_out_sintetizado1));


endmodule
