`timescale 1ms/100ps

`include "probador_recirc.v"
`include "recirculador.v"
`include "sintetizado_recirc_cmos.v"
`include "cmos_cells.v"
module BancoPruebas_recirc;
	wire [31:0] data_input, demux_0, demux_1_probador, demux_0_estructural, demux_1_probador_estructural;
	wire clk_2f, valid_circulacion, active;


	recirculador p_recirculador(
    .clk_2f            ( clk_2f            ),
    .data_input        ( data_input [31:0] ),
    .valid			   ( valid			   ),
    .active            ( active            ),
    .demux_0           ( demux_0    [31:0] ),
    .demux_1_probador  ( demux_1_probador [31:0] ),
	.valid_out			(valid_out)
	);

sintetizado_recirc_cmos u_sintetizado_recirc_cmos(
    .clk_2f                       ( clk_2f                       ),
    .data_input                   ( data_input [31:0]            ),
    .valid                        ( valid                        ),
    .active                       ( active                       ),
    .demux_0_estructural          ( demux_0_estructural[31:0]    ),
    .demux_1_probador_estructural ( demux_1_probador_estructural [31:0]),
    .valid_out_estructural        ( valid_out_estructural        )
);






	probador_recirc probador(
    .data_input       ( data_input [31:0]),
    .demux_0          ( demux_0          [31:0]),
    .demux_1_probador ( demux_1_probador [31:0]),
    .valid_out        ( valid_out        ),
    .demux_0_estructural          ( demux_0_estructural          [31:0]),
    .demux_1_probador_estructural ( demux_1_probador_estructural [31:0]),
    .valid_out_estructural        ( valid_out_estructural        ),
    .active           ( active           ),
    .valid            ( valid            ),
    .clk_2f           ( clk_2f           )
	);


endmodule