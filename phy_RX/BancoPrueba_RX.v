`timescale 1ns/100ps
`include "phy_RX.v"
`include "probador_RX.v"

module BancoPrueba_RX;

	wire [31:0] data_final;
	wire valid_final;
	
   phy_RX RX_conductual(/*AUTOINST*/
			// Outputs
			.data_final	(data_final[31:0]),
			.valid_final	(valid_final),
			// Inputs
			.serial_data_0	(serial_data_0),
			.serial_data_1	(serial_data_1),
			.reset		(reset),
			.clk_2f		(clk_2f),
			.clk_4f		(clk_4f),
			.clk_32f	(clk_32f));

   probador_RX probador(/*AUTOINST*/
			// Outputs
			.serial_data_0	(serial_data_0),
			.serial_data_1	(serial_data_1),
			.reset		(reset),
			.clk_32f	(clk_32f),
			.clk_4f		(clk_4f),
			.clk_2f		(clk_2f),
			// Inputs
			.data_final	(data_final[31:0]),
			.valid_final	(valid_final));

endmodule
	
