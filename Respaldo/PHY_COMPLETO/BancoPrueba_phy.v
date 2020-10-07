`include "probador_phy.v"
`include "phy.v"
`include "PHY_COMPLETO_sintetizado.v"
//`include "phy_sintetizado.v"
module BancoPrubas_PHY;

	wire [31:0] data_input, data_final, data_final_sintetizado;
	wire valid_final, valid_final_sintetizado;
   phy completo(/*AUTOINST*/
		// Outputs
		.data_final		(data_final[31:0]),
		.valid_final		(valid_final),
		// Inputs
		.data_input		(data_input[31:0]),
		.valid			(valid),
		//.active			(active),
		.reset			(reset),
		.clk_2f			(clk_2f),
		.clk_f			(clk_f),
		.clk_4f			(clk_4f),
		.clk_32f		(clk_32f));
	PHY_COMPLETO_sintetizado sintetizado(/*AUTOINST*/
		// Outputs
		.data_final_sintetizado		(data_final_sintetizado[31:0]),
		.valid_final_sintetizado		(valid_final_sintetizado),
		// Inputs
		.data_input		(data_input[31:0]),
		.valid			(valid),
		//.active			(active),
		.reset			(reset),
		.clk_2f			(clk_2f),
		.clk_f			(clk_f),
		.clk_4f			(clk_4f),
		.clk_32f		(clk_32f));



   probador_phy probador (/*AUTOINST*/
			  // Outputs
			  //.active		(active),
			  .valid		(valid),
			  .reset		(reset),
			  .data_input		(data_input[31:0]),
			  .clk_f		(clk_f),
			  .clk_2f		(clk_2f),
			  .clk_4f		(clk_4f),
			  .clk_32f		(clk_32f),
			  // Inputs
			  .data_final		(data_final[31:0]),
			  .valid_final		(valid_final));



endmodule
