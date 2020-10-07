`include "probador_TX.v"
`include "phy_TX.v"
`include "phy_TX_sintetizado.v"
module BancoPrubas_PHY;

	wire [31:0] data_input, data_recirculador_inactive;
	wire data_paralelo_serial_0, data_paralelo_serial_1;
	wire valid, active, reset, clk_f, clk_4f, clk_2f, clk_32f;
	
phy_TX u_phy_TX(
    .data_input                 ( data_input [31:0]          ),
    .valid                      ( valid                      ),
    .data_and_active            ( data_and_active            ),
    .reset                      ( reset                      ),
    .clk_2f                     ( clk_2f                     ),
    .clk_f                      ( clk_f                      ),
    .clk_4f                     ( clk_4f                     ),
    .clk_32f                    ( clk_32f                    ),
    .data_recirculador_inactive ( data_recirculador_inactive [31:0] ),
    .data_paralelo_serial_0     ( data_paralelo_serial_0     ),
    .data_paralelo_serial_1     ( data_paralelo_serial_1     )
);

probador_TX u_probador_TX(
    .data_paralelo_serial_0     ( data_paralelo_serial_0     ),
    .data_paralelo_serial_1     ( data_paralelo_serial_1     ),
    .data_recirculador_inactive ( data_recirculador_inactive [31:0] ),
    .data_and_active            ( data_and_active                     ),
    .valid                      ( valid                      ),
    .reset                      ( reset                      ),
    .data_input                 ( data_input [31:0]          ),
    .clk_f                      ( clk_f                      ),
    .clk_2f                     ( clk_2f                     ),
    .clk_4f                     ( clk_4f                     ),
    .clk_32f                    ( clk_32f                    )
);




endmodule
