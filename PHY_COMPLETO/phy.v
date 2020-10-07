`include "../phy_RX/phy_RX.v"
`include "../phy_TX/phy_TX.v"
`include "../and_active/and_active.v"

module phy(input [31:0] data_input,
			input valid,
			input reset,
			input clk_2f,
			input clk_f,
			input clk_4f,
			input clk_32f,
			output [31:0] data_output,
			output valid_out);

	wire data_paralelo_serial_0, data_paralelo_serial_1, data_and_active;

   phy_TX TX(/*AUTOINST*/
	     // Outputs
	     .data_recirculador_inactive(data_recirculador_inactive[31:0]),
	     .data_paralelo_serial_0	(data_paralelo_serial_0),
	     .data_paralelo_serial_1	(data_paralelo_serial_1),
	     // Inputs
	     .data_input		(data_input[31:0]),
	     .valid			(valid),
	     .data_and_active		(data_and_active),
	     .reset			(reset),
	     .clk_2f			(clk_2f),
	     .clk_f			(clk_f),
	     .clk_4f			(clk_4f),
	     .clk_32f			(clk_32f));

	phy_RX RX(/*AUTOINST*/
		  // Outputs
		  .active_serial_paralelo_1	(active_serial_paralelo_1),
		  .active_serial_paralelo_0	(active_serial_paralelo_0),
		  .data_output		(data_output[31:0]),
		  .valid_out		(valid_out),
		  // Inputs
		  .data_paralelo_serial_0	(data_paralelo_serial_0),
		  .data_paralelo_serial_1	(data_paralelo_serial_1),
		  .reset		(reset),
		  .clk_f		(clk_f),
		  .clk_2f		(clk_2f),
		  .clk_4f		(clk_4f),
		  .clk_32f		(clk_32f));

   	and_active AND(.active_serial_paralelo_0	(active_serial_paralelo_0),
				   .active_serial_paralelo_1	(active_serial_paralelo_1),
				   .data_and_active 			(data_and_active));
   

endmodule
