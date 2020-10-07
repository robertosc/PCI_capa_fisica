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
			output [31:0] data_final,
			output valid_final);

	wire serial_0, serial_1, active_0_rec, active_1_rec, active_recir;

   phy_TX TX(/*AUTOINST*/
	     // Outputs
	     .data_out_ps0		(serial_0),
	     .data_out_ps1		(serial_1),
	     // Inputs
	     .data_input		(data_input[31:0]),
	     .valid			(valid),
	     .reset			(reset),
		 .active         (active_recir),
	     .clk_2f			(clk_2f),
	     .clk_f			(clk_f),
	     .clk_4f			(clk_4f),
	     .clk_32f			(clk_32f));

	phy_RX RX(/*AUTOINST*/
	     // Outputs
	     .data_final		(data_final[31:0]),
	     .valid_final		(valid_final),
		 .active_0 (active_0_rec),
		 .active_1 (active_1_rec),
	     // Inputs
	     .serial_data_0		(serial_0),
	     .serial_data_1		(serial_1),
	     .reset			(reset),
		 .clk_f (clk_f),
	     .clk_2f			(clk_2f),
	     .clk_4f			(clk_4f),
	     .clk_32f			(clk_32f));

   	and_active AND(.active_serial_paralelo_0	(active_0_rec),
				   .active_serial_paralelo_1	(active_1_rec),
				   .data_and_active 		(active_recir));
   

endmodule
