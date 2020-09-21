module mux_striping(
	input clk_2f,
	input [31:0] lane_0,
	input [31:0] lane_1,
	input valid_0,
    input valid_1,
	output reg [31:0] data_output,
    output reg  valid_out
    );
    reg sel= 0;

	always @(posedge clk_2f) begin
		if(valid_0 == 1 && sel == 0 ) begin
			data_output<= lane_0;
			sel <= 1;
            valid_out<=1;
		end

		if(valid_1 == 1 && sel == 1) begin
			data_output<= lane_1;
			sel <= 0;
            valid_out<=1;
		end
		if (valid_0 == 0 && sel == 0) begin
			valid_out<=0;
			sel <= 1;
		end
		if (valid_1 == 0 && sel == 1) begin
			valid_out<=0;
			sel <= 0;
		end
	end

endmodule