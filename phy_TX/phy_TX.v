`include "../recirculador/recirculador.v"
//`include "../lib/cmos_cell.v"
`include "../demux_striping/demux_striping.v"

module PHY_TX(input [31:0] data_input,
			input valid,
			input active,
			input reset,
			input clk_2f,
			input clk_f,
			output reg [31:0] lane_0,
			output reg [31:0] lane_1,
			output reg valid_out0,
			output reg valid_out1
			);

	wire [31:0] data_input, demux_0, demux_1_probador;
	wire clk_2f, valid, active, valid_out, reset;


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
		.valid_out0 ( valid_out0 ),
		.valid_out1  ( valid_out1  )
	);

endmodule
