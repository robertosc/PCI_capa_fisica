`timescale 1ms/100ps

`include "demux_8_32.v"
`include "probador_demux_8_32.v"

module banco_demux_8_32;

	wire [31:0] data_out;
	wire [7:0] data_in;
	wire clk_2f, clk_4f, valid, valid_out;

	demux_8_32 u_demux_8_32(
		.clk_4f   ( clk_4f   ),
		.data_in  ( data_in[7:0]),
		.valid    ( valid    ),
		.data_out ( data_out [31:0]),
		.valid_out ( valid_out )
	);

	probador_recirc u_probador_recirc(
		.data_out   ( data_out [31:0]   ),
		.valid_out  ( valid_out  ),
		.valid      ( valid      ),
		.data_in ( data_in [7:0] ),
		.clk_4f     ( clk_4f     ),
		.clk_2f     ( clk_2f     )
	);

endmodule

