`include "../recirculador/recirculador.v"
//`include "../lib/cmos_cell.v"
`include "../demux_striping/demux_striping.v"
`include "../demux_32_8/demux_32_8.v"
`include "../paralelo_serial/paralelo_serial.v"
`include "../serial_paralelo/serial_paralelo.v"

module phy_TX(input [31:0] data_input,
			input valid,
			input active,
			input reset,
			input clk_2f,
			input clk_f,
			input clk_4f,
			input clk_32f,
			output [7:0] data_out_sp1,
			output valid_out_sp1	
			);

	wire [31:0] data_input, demux_0, demux_1_probador, lane_0, lane_1;
	wire [7:0] demux0_paraleloserial, demux1_paraleloserial;
	wire clk_2f, clk_f, clk_4f, valid, active, valid_out, reset;
	wire valid_demux_striping_0, valid_demux_striping_1, valid_out0, valid_out1, data_out_ps0, data_out_ps1;

	recirculador recirculador_inicial(
		.clk_2f           ( clk_2f           ),
		.data_input       ( data_input [31:0]),
		.valid            ( valid            ),
		.active           ( active           ),
		.demux_0          ( demux_0  [31:0]  ),
		.reset      ( reset      ),
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

	demux_32_8 demux_lane_0(
		.data_out  ( demux0_paraleloserial [7:0]),
		.valid_out ( valid_out0 ),
		.reset     ( reset     ),
		.clk_4f    ( clk_4f    ),
		.data_in    ( lane_0[31:0]    ),
		.valid   ( valid_demux_striping_0 )
	);

	paralelo_serial paralelo_serial0(
		.clk_4f 	(	clk_4f	),
		.clk_32f	(	clk_32f	),
		.data_in	( demux0_paraleloserial [7:0] ),
		.valid_in 	( valid_out0 ),
		.reset 		( reset ),
		.data_out	( data_out_0 )
	);
	
	demux_32_8 demux_lane_1(
		.data_out  ( demux1_paraleloserial [7:0]),
		.valid_out ( valid_out1 ),
		.reset     ( reset     ),
		.clk_4f    ( clk_4f    ),
		.data_in    ( lane_1[31:0]    ),
		.valid   ( valid_demux_striping_1 )
	);

	paralelo_serial paralelo_serial1(
		.clk_4f 	(	clk_4f	),
		.clk_32f	(	clk_32f	),
		.data_in	( demux1_paraleloserial [7:0] ),
		.valid_in 	( valid_out1 ),
		.reset 		( reset ),
		.data_out	( data_out_ps1 )
	);
	serial_paralelo serial_paralelo1(
		.clk_4f 	(	clk_4f	    ),
		.clk_32f	(	clk_32f	    ),
		.data_in	( 	data_out_ps1  ),
		.reset 		( 	reset	    ),
		.data_out	(  data_out_sp1	[7:0]),
		.valid_out	( valid_out_sp1	)
	);

endmodule
