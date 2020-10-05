`timescale 1ms/100ps

//`include "demux_8_32.v"
`include "demux8_32_v2.v"
`include "probador_demux_8_32.v"
`include "sintetizado8a32_cmos.v"
`include "../lib/cmos_cells.v"

module banco_demux_8_32;

	wire [31:0] data_out, data_out_estructural;
	wire [7:0] data_in;
	wire clk_2f, clk_4f, valid, valid_out, valid_out_estructural;

	demux_8_32 u_demux_8_32(
		.clk_4f   ( clk_4f   ),
		.data_in  ( data_in[7:0]),
		.valid    ( valid    ),
		.data_out ( data_out [31:0]),
		.valid_out ( valid_out ),
		.reset (reset)
	);
	sintetizado8a32_cmos u_sintetizado8a32_cmos(
		.clk_4f               ( clk_4f               ),
		.data_in              ( data_in [7:0]        ),
		.valid                ( valid                ),
		.data_out_estructural ( data_out_estructural [31:0] ),
		.valid_out_estructural ( valid_out_estructural ),
		.reset (reset)
	);

	probador_demux_8_32 u_probador_recirc(
		.data_out   ( data_out [31:0]   ),
		.valid_out  ( valid_out  ),
		.data_out_estructural (data_out_estructural[31:0]),
		.valid_out_estructural (valid_out_estructural),
		.valid      ( valid      ),
		.data_in ( data_in [7:0] ),
		.clk_4f     ( clk_4f     ),
		.clk_2f     ( clk_2f     ),
		.reset (reset)
	);

endmodule

