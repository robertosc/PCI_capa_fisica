module serial_paralelo(
	input reset,
	input valid,
	input clk_4f,
	input clk_32f,
	input data_in,
	output reg [7:0] data2send,
	output reg active,
	output reg valid_out,
	output reg [7:0] data_out
	);
	reg [2:0] selector;
	reg [2:0] BC_counter;
	reg dataout_on;

	always @(posedge clk_32f) begin
		if (reset==0)begin
			data2send [7:0]<= 8'b00000000;
			data_out [7:0]<= 8'b00000000;
			valid_out <= 0;
			active <= 0;
			selector <= 0;
			BC_counter <= 0;
			dataout_on <= 0;
		end
		else if (reset==1) begin
			if (valid==1) begin
				case (selector)
        	    	0: begin
						data2send[7:7] <= data_in;
						//data2send[6:0] <= 7'b0000000;
						if (dataout_on==1) begin
							data_out[7:7] <= data_in;
							//data_out[6:0] <= 7'b0000000;
						end
						else begin
							data_out[7:7] <= 0;
						end
						
					end
					
        	    	1: begin
						data2send[6:6] <= data_in;
						if (dataout_on==1) begin
							data_out[6:6] <= data_in;
						end
						else begin
							data_out[6:6] <= 0;
						end
					end
        	    	2: begin
						data2send[5:5] <= data_in;
						if (dataout_on==1) begin
							data_out[5:5] <= data_in;
						end
						else begin
							data_out[5:5] <= 0;
						end
					end
        	    	3: begin
						data2send[4:4] <= data_in;
						if (dataout_on==1) begin
							data_out[4:4] <= data_in;
						end
						else begin
							data_out[4:4] <= 0;
						end
					end
        	    	4: begin
						data2send[3:3] <= data_in;
						if (dataout_on==1) begin
							data_out[3:3] <= data_in;
						end
						else begin
							data_out[3:3] <= 0;
						end
					end
        	    	5: begin
						data2send[2:2] <= data_in;
						if (dataout_on==1) begin
							data_out[2:2] <= data_in;
						end
						else begin
							data_out[2:2] <= 0;
						end
					end
        	    	6: begin
						data2send[1:1] <= data_in;
						if (dataout_on==1) begin
							data_out[1:1] <= data_in;
						end
						else begin
							data_out[1:1] <= 0;
						end
					end
        	    	7: begin
						data2send[0:0] <= data_in;
						if (dataout_on==1) begin
							data_out[0:0] <= data_in;
						end
						else begin
							data_out[0:0] <= 0;
						end
					end
				endcase
			end
			else if (valid==0)begin
				case (selector)
        	    	0: begin
						data2send[7:7] <= 1;
						data_out[7:7] <= 0;
					end
					
        	    	1: begin
						data2send[6:6] <= 0;
						data_out[6:6] <= 0;
					end
        	    	2: begin
						data2send[5:5] <= 1;
						data_out[5:5] <= 0;
					end
        	    	3: begin
						data2send[4:4] <= 1;
						data_out[4:4] <= 0;
					end
        	    	4: begin
						data2send[3:3] <= 1;
						data_out[3:3] <= 0;
					end
        	    	5: begin
						data2send[2:2] <= 1;
						data_out[2:2] <= 0;
					end
        	    	6: begin
						data2send[1:1] <= 0;
						data_out[1:1] <= 0;
					end
        	    	7: begin
						data2send[0:0] <= 0;
						data_out[0:0] <= 0;
					end
				endcase
				
			end
			selector <= selector+1;
			if (selector==7) begin
				selector <= 0;
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

				if (valid ==1 && active ==1) begin
					dataout_on<=1; 
				end
			end
		end
		
	end
endmodule
		



	//reg [7:0] buffer;
	//reg [2:0]BC_counter;
//
	//always @(posedge clk_32f):
	//	if(reset == 0) begin
	//		data2send <= 0;
	//		valid_out <= 0;
	//		active <= 0;
	//		buffer <= 0;
	//	end
	//	else begin
	//		buffer <= {buffer[7:0], data_in};		//De 6:0 anade buffer inicial
	//		
	//	end