`timescale 1ms/100ps

`include "demux_32_8.v"
`include "probador_demux_32_8.v"
`include "sintetizado32a8_cmos.v"
`include "../lib/cmos_cells.v"

module banco_demux_32_8;
	wire [7:0] data_out, data_out_estructural;
	wire [31:0] data_in;
	wire clk_2f, clk_4f, clk_f, valid, valid_out, valid_out_estructural;

	demux_32_8 u_demux_32_8(
		.clk_4f   ( clk_4f   ),
		.data_in  ( data_in[31:0]),
		.valid    ( valid    ),
		.data_out ( data_out [7:0]),
		.valid_out ( valid_out ),
		.reset (reset)
	);
	sintetizado32a8_cmos u_sintetizado32a8_cmos(
		.clk_4f               ( clk_4f               ),
		.data_in              ( data_in [31:0]        ),
		.valid                ( valid                ),
		.data_out_estructural ( data_out_estructural [7:0] ),
		.valid_out_estructural ( valid_out_estructural ),
		.reset (reset)
	);

	probador_demux_32_8 u_probador_recirc(
		.data_out   ( data_out [7:0]   ),
		.valid_out  ( valid_out  ),
		.data_out_estructural (data_out_estructural[7:0]),
		.valid_out_estructural (valid_out_estructural),
		.valid      ( valid      ),
		.data_in ( data_in [31:0] ),
		.clk_4f     ( clk_4f     ),
		.clk_2f     ( clk_2f     ),
		.clk_f (clk_f),
		.reset (reset)
	);

endmodule

