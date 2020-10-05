`include "../serial_paralelo_v2/serial_paralelo.v"
`include "../mux_striping/mux_striping.v"
`include "../demux_8_32/demux_8_32.v"

module phy_RX(	input serial_data_0,
				input serial_data_1,
				input reset,
				input clk_2f,
				input clk_4f,
				input clk_32f,
				output [31:0] data_final,
				output valid_final);

	wire data_in0, data_in1, clk_4f, clk_32f, reset, active_0, active_1;

	wire [7:0] data2send_0, data2send_1;

	wire [7:0] data_out_0, data_out_1;

	wire [7:0] data_out_sp_0, data_out_sp_1;

	wire valid_sp_0, valid_sp_1, valid_demux_0, valid_demux_1;
	
	wire [31:0] demux_out_0, demux_out_1;

   serial_paralelo sp0 (/*AUTOINST*/
			// Outputs
			.active		(active_0),
			.valid_out	(valid_sp_0),
			.data_out	(data_out_sp_0[7:0]),
			// Inputs
			.reset		(reset),
			.clk_4f		(clk_4f),
			.clk_32f	(clk_32f),
			.data_in	(serial_data_0));

   serial_paralelo sp1 (/*AUTOINST*/
			// Outputs
			.active		(active_1),
			.valid_out	(valid_sp_1),
			.data_out	(data_out_sp_1[7:0]),
			// Inputs
			.reset		(reset),
			.clk_4f		(clk_4f),
			.clk_32f	(clk_32f),
			.data_in	(serial_data_1));

	demux_8_32 demux_final_0 (/*AUTOINST*/
				// Outputs
				.data_out		(demux_out_0[31:0]),
				.valid_out		(valid_demux_0),
				// Inputs
				.clk_4f		(clk_4f),
				.data_in		(data_out_sp_0[7:0]),
				.valid		(valid_sp_0),
				.reset		(reset));

   demux_8_32 demux_final_1 (/*AUTOINST*/
			     // Outputs
			     .data_out		(demux_out_1[31:0]),
			     .valid_out		(valid_demux_1),
			     // Inputs
			     .clk_4f		(clk_4f),
			     .data_in		(data_out_sp_1[7:0]),
			     .valid		(valid_sp_1),
			     .reset		(reset));
   
   mux_striping mux_stp(/*AUTOINST*/
			  // Outputs
			  .data_output		(data_final[31:0]),
			  .valid_out		(valid_final),
			  // Inputs
			  .clk_2f		(clk_2f),
			  .lane_0		(demux_out_0[31:0]),
			  .lane_1		(demux_out_1[31:0]),
			  .valid_0		(valid_demux_0),
			  .valid_1		(valid_demux_1),
			  .reset		(reset));
   
endmodule
