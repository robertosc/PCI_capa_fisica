`include "probador_phy.v"
`include "phy.v"
`include "PHY_COMPLETO_sintetizado.v"
//`include "phy_sintetizado.v"
module BancoPrueba_phy;

	wire [31:0] data_input, data_output, data_output_sintetizado;
	wire valid_out, valid_out_sintetizado;
   phy completo(/*AUTOINST*/
		// Outputs
		.data_output		(data_output[31:0]),
		.valid_out		(valid_out),
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
		.data_output_sintetizado		(data_output_sintetizado[31:0]),
		.valid_out_sintetizado		(valid_out_sintetizado),
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
			  .data_output		(data_output[31:0]),
			  .valid_out		(valid_out),
			  .data_output_sintetizado (data_output_sintetizado[31:0]),
			  .valid_out_sintetizado (valid_out_sintetizado));



endmodule
