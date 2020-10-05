module demux_8_32(input clk_4f,
				input [7:0] data_in,
				input valid,
				input reset,
				output reg [31:0] data_out,
				output reg valid_out); //tiene que ser reg para poder ser l-value

	reg [1:0] selector;
	reg [31:0] transicion;
	integer contador;

	always @(posedge clk_4f) begin
		if(reset == 0) begin
			selector [1:0] <= 2'b00;
			valid_out <= 0;
			transicion<=0;
			data_out <= 0;
			contador <= 0;
		end
		else begin
			if(valid == 1) begin
				if(selector == 2'b00) begin
					transicion [31:24] <= data_in;
					selector <= 2'b01;
					data_out[31:0]<=transicion[31:0];
				end
				else if(selector == 2'b01) begin
					transicion [23:16] <= data_in;
					selector <= 2'b10;
				end
				else if(selector[1] == 1 && selector[0] == 0) begin
					transicion [15:8] <= data_in;
					selector <= 2'b11;
				end
				else if(selector == 2'b11) begin
					transicion [7:0] <= data_in;
					valid_out <= valid;
					selector <= 2'b00;
					contador <= 0;
				end
			end
			else begin
				selector <= 2'b00;
				data_out[31:0]<=transicion[31:0];
				contador <= contador + 1;
				if (contador == 3) begin
					valid_out <= 0;
					transicion <=0;
				end
			end
		end
	end


endmodule