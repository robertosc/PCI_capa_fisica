module demux_32_8(input clk_4f,
				input [31:0] data_in,
				input valid,
				input reset,
				output reg [7:0] data_out,
				output reg valid_out); //tiene que ser reg para poder ser l-value

	reg [1:0] selector;

	always @(posedge clk_4f) begin
		if(reset == 0) begin
			selector [1:0] <= 2'b00;
			valid_out <= 0;
		end
		else begin
			if(valid == 1) begin
				if(selector == 2'b00) begin
					data_out <= data_in [31:24];
					valid_out <= valid;
					selector <= 2'b01;
				end
				else if(selector == 2'b01) begin
					data_out <= data_in [23:16];
					valid_out <= valid;
					selector <= 2'b10;
				end
				else if(selector[1] == 1 && selector[0] == 0) begin
					data_out <= data_in [15:8];
					valid_out <= valid;
					selector <= 2'b11;
				end
				else if(selector == 2'b11) begin
					data_out<= data_in[7:0];
					valid_out <= valid;
					selector <= 2'b00;
				end
			end
			else begin
				valid_out <= 0;
				selector <= 2'b00;
			end
		end
	end


endmodule