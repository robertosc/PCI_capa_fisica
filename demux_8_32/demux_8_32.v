module demux_8_32(input clk_4f,
				input [7:0] data_in,
				input valid,
				input reset,
				output reg [31:0] data_out,
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
					data_out [7:0] <= data_in;
					valid_out <= valid;
					selector <= 2'b01;
				end
				else if(selector == 2'b01) begin
					data_out [15:8] <= data_in;
					valid_out <= valid;
					selector <= 2'b10;
				end
				else if(selector[1] == 1 && selector[0] == 0) begin
					data_out [23:16] <= data_in;
					valid_out <= valid;
					selector <= 2'b11;
				end
				else if(selector == 2'b11) begin
					data_out [31:24] <= data_in;
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