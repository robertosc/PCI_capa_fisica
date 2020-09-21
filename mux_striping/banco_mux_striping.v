`timescale 1ms/100ps

`include "probador_mux_striping.v"
`include "mux_striping.v"
`include "mux_striping_sintetizado.v"

module banco_mux_striping;
	wire [31:0] data_output, lane_0, lane_1, data_output_sintetizado;
	wire clk_2f, valid_out, valid_0, valid_1, valid_out_sintetizado;


	mux_striping muxs(/*AUTOINST*/
			  // Outputs
			  .data_output		(data_output[31:0]),
			  .valid_out		(valid_out),
			  // Inputs
			  .clk_2f		(clk_2f),
			  .lane_0		(lane_0[31:0]),
			  .lane_1		(lane_1[31:0]),
			  .valid_0		(valid_0),
			  .valid_1		(valid_1));
	
	mux_striping_sintetizado sintetizado(/*AUTOINST*/
			  // Outputs
			  .data_output		(data_output_sintetizado[31:0]),
			  .valid_out		(valid_out_sintetizado),
			  // Inputs
			  .clk_2f		(clk_2f),
			  .lane_0		(lane_0[31:0]),
			  .lane_1		(lane_1[31:0]),
			  .valid_0		(valid_0),
			  .valid_1		(valid_1));


	probador_mux_striping probador(/*AUTOINST*/
				       // Outputs
				       .valid_0		(valid_0),
				       .valid_1		(valid_1),
				       .clk_2f		(clk_2f),
				       .lane_0		(lane_0[31:0]),
				       .lane_1		(lane_1[31:0]),
				       // Inputs
				       .data_output	(data_output[31:0]),
				       .valid_out	(valid_out),
					   .data_output_sintetizado	(data_output_sintetizado[31:0]),
				       .valid_out_sintetizado	(valid_out_sintetizado));


endmodule
