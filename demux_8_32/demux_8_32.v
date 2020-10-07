module demux_8_32(input clk_4f,
				input clk_f,
				input [7:0] data_serial_paralelo,
				input valid_serial_paralelo,
				input reset,
				output reg [31:0] data_demux_8_32,
				output reg valid_demux_8_32); //tiene que ser reg para poder ser l-value

	integer contador;			
	reg delay_valid;			//Retrasa el valid_serial_paralelo
	reg [31:0] buffer;			//Acá se va pegando por partes
	reg [31:0] buffer_out;		//Acá se guarda el mensaje completo
	reg ready, ready2;


	always @(posedge clk_4f) begin
		if(reset == 0) begin
			contador  <= 0;
			valid_demux_8_32 <= 0;
			buffer <= 0;
			data_demux_8_32 <= 0;
			delay_valid <= 0;
			ready <= 0;
		end
		else begin
			delay_valid <= valid_serial_paralelo;					//Retraso de valid_serial_paralelo un ciclo y se trabaja respecto a este
			buffer <= {buffer[23:0], data_serial_paralelo};		//Desplazamiento
			if(delay_valid) begin
				if (contador == 3) begin
					data_demux_8_32 <= buffer;
					valid_demux_8_32 <= 1;
					ready <= 1;
				end
				contador <= contador + 1;
				if(contador >= 3) begin 
					contador <= 0;
				end
			end
			else begin
				contador <= 0;
				ready <= 0;
			end
			if (ready) valid_demux_8_32 <= delay_valid;

			//if (delay == 2'b01) begin
			//	valid_demux_8_32 <= delay_valid;
			//	delay <= 0;
			//	ready <= 0;
			//end
		end
	end

endmodule