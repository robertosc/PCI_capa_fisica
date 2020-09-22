`timescale 1ms/100ps

`include "probador_demux_striping.v"
`include "demux_striping.v"
`include "demux_striping_sintetizado.v" 
`include "cmos_cells.v"

module banco_demux_striping;
	wire [31:0] data_input, lane_0, lane_1, lane_0_estructural, lane_1_estructural;
	wire clk_2f, valid_out0, valid_out0_estructural, valid_out1, valid_out1_estructural, valid_in;


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

	demux_striping_sintetizado u_demux_striping_sintetizado(
		.clk_2f                 ( clk_2f                 ),
		.data_input             ( data_input  [31:0]     ),
		.valid_in               ( valid_in               ),
		.lane_0_estructural     ( lane_0_estructural[31:0]),
		.lane_1_estructural     ( lane_1_estructural[31:0]),
		.valid_out0_estructural ( valid_out0_estructural ),
		.valid_out1_estructural ( valid_out1_estructural )
	);



	probador_demux_striping probador(/*AUTOINST*/
					 // Outputs
					 .valid_in		(valid_in),
					 .clk_2f		(clk_2f),
					 .data_input		(data_input[31:0]),
					 // Inputs
					 .lane_0		(lane_0[31:0]),
					 .lane_1		(lane_1[31:0]),
					 .lane_0_estructural	(lane_0_estructural[31:0]),
					 .lane_1_estructural	(lane_1_estructural[31:0]),
					 .valid_out0		(valid_out0),
					 .valid_out1		(valid_out1),
					 .valid_out0_estructural (valid_out0_estructural),
					 .valid_out1_estructural (valid_out1_estructural));


endmodule
