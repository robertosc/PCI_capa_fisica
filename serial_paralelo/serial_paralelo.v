module seria_paralelo(input reset,
						input valid,
						input clk_4f,
						input clk_32f,
						input data_in,
						output reg [7:0] data2send,
						output reg active,
						output reg valid_out);

	reg [7:0] buffer;
	reg BC;

	always @(posedge clk_32f):
		if(reset == 0) begin
			data2send <= 0;
			valid_out <= 0;
			active <= 0;
			buffer <= 0;
		end
		else begin
			buffer <= {buffer[7:0], data_in};		//De 6:0 anade buffer inicial
			
		end