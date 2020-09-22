module recirculador(input clk_2f,
					input [31:0] data_input,
					input valid,
					input active,
					output reg [31:0] demux_0,
					output reg [31:0] demux_1_probador,
					output reg valid_out);

	always @(posedge clk_2f) begin
		if(valid == 1 && active == 1) begin
			demux_0 <= data_input;
			valid_out <= 1;
		end

		else if(valid == 0 || active == 0) begin
			demux_1_probador <= data_input;
			valid_out <= 0;
		end
	end

endmodule