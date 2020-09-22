`include "../recirculador/recirculador.v"
//`include "../lib/cmos_cell.v"
`include "../demux_striping/demux_striping.v"
`include "../demux_32_8/demux32_8.v"

module phy_TX(input [31:0] data_input,
			input valid,
			input active,
			input reset,
			input clk_2f,
			input clk_f,
			input clk_4f,
			output [7:0] data_out_0,
			output [7:0] data_out_1,
			output valid_out0,
			output valid_out1
			);

	wire [31:0] data_input, demux_0, demux_1_probador, lane_0, lane_1;
	wire clk_2f, clk_f, clk_4f, valid, active, valid_out, reset, valid_demux_striping_0, valid_demux_striping_1;


	recirculador recirculador_inicial(
		.clk_2f           ( clk_2f           ),
		.data_input       ( data_input [31:0]),
		.valid            ( valid            ),
		.active           ( active           ),
		.demux_0          ( demux_0  [31:0]  ),
		.demux_1_probador ( demux_1_probador[31:0]),
		.valid_out        ( valid_out        )
	);

	demux_striping u_demux_striping(
		.clk_2f     ( clk_2f     ),
		.data_input ( demux_0[31:0]	),
		.valid_in   ( valid_out  ),
		.reset      ( reset      ),
		.lane_0     ( lane_0 [31:0]),
		.lane_1     ( lane_1 [31:0]),
		.valid_out0 ( valid_demux_striping_0 ),
		.valid_out1 ( valid_demux_striping_1  )
	);

	demux32_8 demux_lane_0(
		.data_out  ( data_out_0 [7:0]),
		.valid_out ( valid_out0 ),
		.reset     ( reset     ),
		.clk_4f    ( clk_4f    ),
		.lane_0    ( lane_0[31:0]    ),
		.valid_0   ( valid_demux_striping_0 )
	);
	
	demux32_8 demux_lane_1(
		.data_out  ( data_out_1 [7:0]),
		.valid_out ( valid_out1 ),
		.reset     ( reset     ),
		.clk_4f    ( clk_4f    ),
		.lane_0    ( lane_1[31:0]    ),
		.valid_0   ( valid_demux_striping_1 )
	);


endmodule
