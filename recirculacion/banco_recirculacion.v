`timescale 1ms/100ps

`include "probador_recirc.v"
`include "recirculacion.v"

module BancoPruebas_recirc;
	wire [31:0] data_input, demux_0, demux_1_probador;
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


	probador_recirc probador(
    .data_input       ( data_input [31:0]),
    .demux_0          ( demux_0          [31:0]),
    .demux_1_probador ( demux_1_probador [31:0]),
    .valid_out        ( valid_out        ),
    .active           ( active           ),
    .valid            ( valid            ),
    .clk_2f           ( clk_2f           )
	);


endmodule