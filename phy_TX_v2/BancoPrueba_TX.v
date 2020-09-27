`include "./probador_TX.v"
`include "phy_TX.v"
`include "phy_TX_sintetizado.v"
`include "cmos_cells.v"
module BancoPrubas_PHY;

	wire [31:0] data_input;
	wire data_out_0, data_out_1, data_out_0_sintetizado, data_out_1_sintetizado;
	wire valid, active, reset, clk_f, clk_4f, clk_2f, clk_32f;
	phy_TX PHY_TX(
		.data_input ( data_input[31:0]),
		.valid      ( valid      ),
		.active     ( active     ),
		.reset      ( reset      ),
		.clk_2f     ( clk_2f     ),
		.clk_f      ( clk_f      ),
		.clk_4f		(clk_4f),
		.clk_32f	(clk_32f),
		.data_out_0 (data_out_0),
		.data_out_1 (data_out_1)
	);

	phy_TX_sintetizado sintetizado(
		.data_input ( data_input[31:0]),
		.valid      ( valid      ),
		.active     ( active     ),
		.reset      ( reset      ),
		.clk_2f     ( clk_2f     ),
		.clk_f      ( clk_f      ),
		.clk_4f		(clk_4f),
		.clk_32f	(clk_32f),
		.data_out_0_sintetizado (data_out_0_sintetizado),
		.data_out_1_sintetizado (data_out_1_sintetizado)
	);

	probador u_probador(
		.data_out_0 ( data_out_0),
		.data_out_1 ( data_out_1),
		.data_out_0_sintetizado ( data_out_0_sintetizado),
		.data_out_1_sintetizado ( data_out_1_sintetizado),
		.active     ( active     ),
		.valid      ( valid      ),
		.reset      ( reset      ),
		.data_input ( data_input[31:0] ),
		.clk_f      ( clk_f      ),
		.clk_2f     ( clk_2f     ),
		.clk_4f     ( clk_4f     ),
		.clk_32f	( clk_32f	 )
	);



endmodule
