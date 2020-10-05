module demux_8_32(input clk_4f,
				input [7:0] data_in,
				input valid,
				input reset,
				output reg [31:0] data_out,
				output reg valid_out); //tiene que ser reg para poder ser l-value

	reg [31:0] buffer;
	integer contador;

	always @(posedge clk_4f) begin
		if(reset == 0) begin
			contador <= 0;
			valid_out <= 0;
			data_out <= 0;
			buffer <= 0;
		end
		else begin
			if(valid == 1) begin
				buffer = {buffer[23:0], data_in};
				if (contador == 3) begin
					data_out <= buffer;
					contador <= 0;
					valid_out <= 1;
				end
				contador <= contador + 1;
				if(contador == 3) contador <= 0;
			end
			else begin			//Caso valid 0
				valid_out <= 0;
			end
		end
	end


endmodule