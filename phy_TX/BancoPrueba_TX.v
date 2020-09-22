`include "./probador_TX.v"
`include "phy_TX.v"

module BancoPrubas_PHY;

	wire [31:0] data_input, lane_0, lane_1;
	wire valid, active, reset, clk_f, clk_4f, clk_2f, valid_out0, valid_1;
	PHY_TX PHY_TX(
		.data_input ( data_input[31:0]),
		.valid      ( valid      ),
		.active     ( active     ),
		.reset      ( reset      ),
		.clk_2f     ( clk_2f     ),
		.clk_f      ( clk_f      ),
		.lane_0     ( lane_0 [31:0] ),
		.lane_1     ( lane_1 [31:0] ),
		.valid_out0 ( valid_out0 ),
		.valid_out1  ( valid_out1  )
	);

probador u_probador(
    .lane_0     ( lane_0 [31:0] ),
    .lane_1     ( lane_1 [31:0] ),
    .valid_0    ( valid_out0    ),
    .valid_1    ( valid_out1    ),
    .active     ( active     ),
    .valid      ( valid      ),
    .reset      ( reset      ),
    .data_input ( data_input[31:0]),
    .clk_f      ( clk_f      ),
    .clk_2f     ( clk_2f     ),
    .clk_4f     ( clk_4f     )
);


endmodule
