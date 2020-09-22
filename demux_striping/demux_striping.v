module demux_striping(
    input clk_2f,
	input [31:0] data_input,
	input valid_in,
	input reset,
	output reg [31:0] lane_0,
	output reg [31:0] lane_1,
    output reg valid_out0,
    output reg valid_out1
    );
	reg sel;

	always @(posedge clk_2f) begin
		if(reset == 0)begin
			sel=0;
			valid_out0 <= 0;
			valid_out1 <= 0;
		end
		else begin
			if(valid_in == 1 && sel == 0 ) begin
				lane_0 <= data_input;
				sel <= 1;
				valid_out0<=1;
			end

			else if(valid_in == 1 && sel == 1) begin
				lane_1 <= data_input;
				sel <= 0;
				valid_out1<=1;
			end

			else if (valid_in == 0 && sel == 0) begin
				sel <= 1;
				valid_out0<=0;
			end
			else if (valid_in == 0 && sel == 1) begin
				sel <= 0;
				valid_out1<=0;
			end
		end
	end

endmodule