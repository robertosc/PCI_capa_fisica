`timescale 1ms/100ps

`include "probador_mux_striping.v"
`include "mux_striping.v"

module banco_mux_striping;
	wire [31:0] data_output, lane_0, lane_1;
	wire clk_2f, valid_out, valid_0, valid_1;


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


	probador_mux_striping probador(/*AUTOINST*/
				       // Outputs
				       .valid_0		(valid_0),
				       .valid_1		(valid_1),
				       .clk_2f		(clk_2f),
				       .lane_0		(lane_0[31:0]),
				       .lane_1		(lane_1[31:0]),
				       // Inputs
				       .data_output	(data_output[31:0]),
				       .valid_out	(valid_out));


endmodule
