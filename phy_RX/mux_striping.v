module mux_striping(
	input clk_2f,
	input [31:0] data_demux_8_32_0,
	input [31:0] data_demux_8_32_1,
	input valid_demux_8_32_0,
    input valid_demux_8_32_1,
	input reset,
	output reg [31:0] data_output,
    output reg  valid_out
    );
    reg sel;

	always @(posedge clk_2f) begin
		if(reset == 0)begin
			sel <=0 ;
			valid_out <= 0;
			data_output<=0;
		end
		else begin
			if (sel==0) begin
				if (valid_demux_8_32_0==1)begin
					data_output<=data_demux_8_32_0 ;
					sel <= 1;
					valid_out<=1;
				end
				else begin
					sel <= 0;
					valid_out<=0;
				end
			end
			else begin
				if (valid_demux_8_32_1==1) begin
					data_output<=data_demux_8_32_1 ;
					sel <= 0;
					valid_out<=1;
				end
				else begin
					sel <= 1;
					valid_out<=0;
				end
			end	

		end
	end

endmodule