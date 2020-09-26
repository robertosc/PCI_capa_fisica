module seria_paralelo(input reset,
						input valid,
						input clk_4f,
						input clk_32f,
						input data_in,
						output reg [7:0] data2send,
						output reg active,
						output reg valid_out);

	reg [2:0] selector;

	always @(posedge clk_32f):
		if(reset == 0) begin
			data2send <= 0;
			valid_out <= 0;
			active <= 0;
			selector <= 3'b111;
		end
		else begin
			if(selector == 3'b111) begin
				data2send[7] <= data_in;
				selector <= 3'b110;
			end
			else if(selector == 3'b110) begin
				data2send[6] <= data_in;
				selector <= 3'b101;
			end
			else if(selector == 3'b101) begin
				data2send[6] <= data_in;
				selector <= 3'b100;
			end
			else if(selector == 3'b100) begin
				data2send[6] <= data_in;
				selector <= 3'b011;
			end
			else if(selector == 3'b011) begin
				data2send[6] <= data_in;
				selector <= 3'b010;
			end
			else if(selector == 3'b010) begin
				data2send[6] <= data_in;
				selector <= 3'b001;
			end
			else if(selector == 3'b001) begin
				data2send[6] <= data_in;
				selector <= 3'b000;
			end
			else if(selector == 3'b000) begin
				data2send[6] <= data_in;
				selector <= 3'b111;
			end
		end