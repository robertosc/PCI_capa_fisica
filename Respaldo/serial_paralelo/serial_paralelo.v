module serial_paralelo(
	input reset,
	input clk_4f,
	input clk_32f,
	input data_in,
	output reg [7:0] data2send,
	output reg active,
	output reg valid_out,
	output reg [7:0] data_out
	);

	reg [3:0] selector;
	reg [2:0] BC_counter;
	reg [7:0] transicion_dataout;
	reg dataout_on;
	reg [1:0] corregirretardo;
	reg primero;

	always @(posedge clk_32f) begin
		if (reset==0)begin
			data2send [7:0]<= 8'b00000000;
			data_out [7:0]<= 8'b00000000;
			transicion_dataout [7:0]<= 8'b00000000;
			valid_out <= 0;
			active <= 0;
			selector <= 0;
			BC_counter <= 0;
			dataout_on <= 0;
			primero<=0;
		end
		else if (reset==1) begin
			case (selector)
        		0: begin
					if (primero==0) begin
						data2send[7:0] <= 8'b00000000;
						if(data_in==1) begin
							primero<=1;
							data2send[7:7] <= data_in;
							if (dataout_on==1) begin
								transicion_dataout[7:7] <= data_in;
							end
							else begin
								transicion_dataout[7:7] <= 0;
							end

							end
					end
					else if (primero==1) begin
						data2send[7:0] <= 8'b00000000;
						data2send[7:7] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[7:7] <= data_in;
						end
						else begin
							transicion_dataout[7:7] <= 0;
						end
						
					end
					
					
				end
				
        		1: begin
					if (primero==0) begin
						data2send[7:7] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[7:7] <= data_in;
						end
						else begin
							transicion_dataout[7:7] <= 0;
						end
					end
					else if (primero==1) begin
						data2send[6:6] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[6:6] <= data_in;
						end
						else begin
							transicion_dataout[6:6] <= 0;
						end
					end
						
				end
        		2: begin
					if (primero==0) begin
						data2send[6:6] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[6:6] <= data_in;
						end
						else if (primero==1)begin
							transicion_dataout[6:6] <= 0;
						end
					end
					else begin
						data2send[5:5] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[5:5] <= data_in;
						end
						else if (primero==1) begin
							transicion_dataout[5:5] <= 0;
						end
					end
				end
        		3: begin
					if (primero==0) begin
						data2send[5:5] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[5:5] <= data_in;
						end
						else if (primero==1) begin
							transicion_dataout[5:5] <= 0;
						end
					end
					else begin
						data2send[4:4] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[4:4] <= data_in;
						end
						else if (primero==1) begin
							transicion_dataout[4:4] <= 0;
						end
					end
						
				end
        		4: begin
					if (primero==0) begin
						data2send[4:4] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[4:4] <= data_in;
						end
						else begin
							transicion_dataout[4:4] <= 0;
						end
					end
					else if (primero==1) begin
						data2send[3:3] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[3:3] <= data_in;
						end
						else begin
							transicion_dataout[3:3] <= 0;
						end
					end
				end
        		5: begin
					if (primero==0) begin
						data2send[3:3] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[3:3] <= data_in;
						end
						else begin
							transicion_dataout[3:3] <= 0;
						end
					end
					else if (primero==1) begin
						data2send[2:2] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[2:2] <= data_in;
						end
						else begin
							transicion_dataout[2:2] <= 0;
						end
					end
						
				end
        		6: begin
					if (primero==0) begin
						data2send[2:2] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[2:2] <= data_in;
						end
						else begin
							transicion_dataout[2:2] <= 0;
						end
					end
					else if (primero==1) begin
						data2send[1:1] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[1:1] <= data_in;
						end
						else begin
							transicion_dataout[1:1] <= 0;
						end
					end
						
				end
        		7: begin
					if (primero==0) begin
						data2send[1:1] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[1:1] <= data_in;
						end
						else begin
							transicion_dataout[1:1] <= 0;
						end
					end
					else if (primero==1) begin
						data2send[0:0] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[0:0] <= data_in;
						end
						else begin
							transicion_dataout[0:0] <= 0;
						end
					end

						
				end
				8: begin
					if (primero==0) begin
						data2send[0:0] <= data_in;
						if (dataout_on==1) begin
							transicion_dataout[0:0] <= data_in;
						end
						else begin
							transicion_dataout[0:0] <= 0;
						end
					end		
				end
			endcase
			if (selector==7 && primero==1) begin
				primero<=1;
				//data2send=data2send<<1;
				selector <= 0;
				data_out[7:0]<=transicion_dataout[7:0];
				if (data2send[7:0]==8'b10111100) begin
					BC_counter<= BC_counter+1;
					valid_out<=0;
				end
				else begin
					valid_out<=1;
				end
				if (BC_counter>3) begin
					active <= 1;
				end

				if (active ==1) begin
					dataout_on<=1; 
				end
			end
			else if (selector==8 && primero==0) begin
				primero<=1;
				//data2send=data2send<<1;
				selector <= 0;
				data_out[7:0]<=transicion_dataout[7:0];
				if (data2send[7:0]==8'b10111100) begin
					BC_counter<= BC_counter+1;
					valid_out<=0;
				end
				if (BC_counter>3) begin
					active <= 1;
					valid_out<=1;
				end

				if (active ==1) begin
					dataout_on<=1; 
				end
			end
			else begin
				selector <= selector+1;
			end
			
		end
		
	end
endmodule