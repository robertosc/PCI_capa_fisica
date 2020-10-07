`timescale 1ns/100ps
`include "phy_RX.v"
//`include "phy_RX_sintetizado.v"
`include "probador_RX.v"

module BancoPrueba_RX;

	wire [31:0] data_output;
	wire valid_out;
	//wire [31:0] data_final_sintetizado;
	//wire valid_final_sintetizado;
	
   phy_RX RX_conductual(/*AUTOINST*/
			// Outputs
			.active_serial_paralelo_1(active_serial_paralelo_1),
			.active_serial_paralelo_0(active_serial_paralelo_0),
			.data_output	(data_output[31:0]),
			.valid_out	(valid_out),
			// Inputs
			.data_paralelo_serial_0(data_paralelo_serial_0),
			.data_paralelo_serial_1(data_paralelo_serial_1),
			.reset		(reset),
			.clk_f		(clk_f),
			.clk_2f		(clk_2f),
			.clk_4f		(clk_4f),
			.clk_32f	(clk_32f));

   //phy_RX_sintetizado RX_sintetizado(/*AUTOINST*/
				     // Outputs
	//			     .data_final_sintetizado(data_final_sintetizado[31:0]),
	//			     .valid_final_sintetizado(valid_final_sintetizado),
				     // Inputs
		//		     .clk_2f		(clk_2f),
	//			     .clk_32f		(clk_32f),
	//			     .clk_4f		(clk_4f),
	//			     .reset		(reset),
	//			     .data_paralelo_serial_0	(data_paralelo_serial_0),
	//			     .data_paralelo_serial_1	(data_paralelo_serial_1));

   probador_RX probador(/*AUTOINST*/
			// Outputs
			.data_paralelo_serial_0	(data_paralelo_serial_0),
			.data_paralelo_serial_1	(data_paralelo_serial_1),
			.reset		(reset),
			.clk_32f	(clk_32f),
			.clk_4f		(clk_4f),
			.clk_2f		(clk_2f),
			// Inputs
			.data_output	(data_output[31:0]),
			.valid_out	(valid_out)
			//.data_final_sintetizado(data_final_sintetizado[31:0]),
			//.valid_final_sintetizado(valid_final_sintetizado)
			);

endmodule
	
