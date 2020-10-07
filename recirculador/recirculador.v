module recirculador(input clk_2f,
					input [31:0] data_input,
					input valid,
					input data_and_active,
					input reset,
					output reg [31:0] data_recirculador_active,
					output reg [31:0] data_recirculador_inactive,
					output reg valid_recirculador);

	always @(posedge clk_2f) begin
		if(reset == 0) begin
			valid_recirculador <= 0;
			data_recirculador_inactive <= data_input;
			data_recirculador_active <= 32'h00000000; // Se agregaron los ceros para que no se 
		end
		else begin
			if(valid == 1 && data_and_active == 1) begin
				data_recirculador_active <= data_input;
				valid_recirculador <= 1;
			end

			else if(valid == 0 || data_and_active == 0) begin
				data_recirculador_inactive <= data_input;
				valid_recirculador <= 0;
			end
		end
	end

endmodule