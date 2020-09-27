module seria_paralelo(input reset,
						input valid,
						input clk_4f,
						input clk_32f,
						input data_in,
						output reg [7:0] data2send,
						output reg active,
						output reg valid_out,
						output reg [7:0] data_out);
	reg [2:0] selector;
	reg [2:0] BC_counter;
	always @(posedge clk_4f);
		if (reset==0)begin
			data2send [7:0]<= 8'b00000000;
			valid_out <= 0;
			active <= 0;
			data_out [7:0]<= 8'b00000000;
			selector <= 0;
			BC_counter <= 0;
		end
		else begin
			for (i =0 ; i<9;i=i+1 ) begin
				always @(posedge clk_32f)  begin
					
				
					if (valid==1) begin
						case (selector)
                	    0: data2send[7:7] <= data_in;
                	    1: data2send[6:6] <= data_in;
                	    2: data2send[5:5]<= data_in;
                	    3: data2send[4:4]<= data_in;
                	    4: data2send[3:3] <= data_in;
                	    5: data2send[2:2] <= data_in;
                	    6: data2send[1:1]<= data_in;
                	    7: begin
                	        data2send[7:0]<= data_in;
                	        selector <= 0;
                	    end

					end
					else begin
						case (selector)
                	    0: data2send[7:7] <= 1;
                	    1: data2send[6:6] <= 0;
                	    2: data2send[5:5]<= 1;
                	    3: data2send[4:4]<= 1;
                	    4: data2send[3:3] <= 1;
                	    5: data2send[2:2] <= 1;
                	    6: data2send[1:1]<= 0;
                	    7: begin
                	        data2send[0:0]<= 0;
                	        selector <= 0;
                	    end

					end
					selector <= selector + 1;
				end
			end
			
			if (data2send[7:0]==8'b10111100) begin
				BC_counter<= BC_counter+1;
				valid=0;
			end
			else begin
				valid=1
			end
			if (BC_counter>3) begin
				active <= 1;
			end

			if (valid ==1 && active ==1) begin
				data_out[7:0] <= data2send [7:0]
			end
			else begin
				data_out [7:0]<= 8'b00000000;
			end

		end



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