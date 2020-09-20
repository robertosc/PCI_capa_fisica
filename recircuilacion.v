module recirculador(input clk_2f;
					input [31:0] data_input,
					input valid_circulacion,
					input active,
					output reg [31:0] demux_0,
					output reg [31:0] demux_1_probador);

	always @(*) begin
		if(valid_circulacion == 1 && active == 1) begin
			demux_0 = data_input;
		end

		else if(valid_circulacion == 0 || active == 0) begin
			demux_1_probador = data_input;
		end
	end

endmodule