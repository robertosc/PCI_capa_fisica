module demux_striping(
    input clk_2f,
	input [31:0] data_input,
	input valid_0,
    input valid_1,
	output reg [31:0] lane_0,
	output reg [31:0] lane_1,
    output reg  valid_out0,
    output reg valid_out1
    );
    reg sel= 0;

	always @(posedge clk_2f) begin
		if(valid_0 == 1 && sel == 0 ) begin
			lane_0 <= data_input;
			sel <= 1;
            valid_out0<=1;
		end

		else if(valid_1 == 1 || sel == 1) begin
			lane_1 <= data_input;
			sel <= 0;
            valid_out1<=1;
		end
	end

endmodule