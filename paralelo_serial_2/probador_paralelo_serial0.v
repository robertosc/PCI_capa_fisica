module probador_paralelo_serial0(input [7:0] data2send,
                                input data_out,
								output reg reset,
								output reg valid_in,
						        output reg [7:0] data_in,
						        output reg clk_4f,
						        output reg clk_32f);
	initial begin
	$dumpfile("paraleloserial.vcd");
	$dumpvars;

	{valid_in} <= 0;
	data_in <= 8'hFF;
	reset <=0;
	
	@(posedge clk_4f);
	valid_in <= 0;
	data_in <= 8'hDE;
	reset <= 0;

	@(posedge clk_4f);
	valid_in <= 0;
	data_in <= 8'hCC;
	@(posedge clk_4f);
	reset <=1;
	valid_in <= 1;
	data_in <= 8'hAB;

	@(posedge clk_4f);
	valid_in <= 1;
	data_in <= 8'hCA;

	@(posedge clk_4f);
	valid_in <= 1;
	data_in <= 8'h12;

	@(posedge clk_4f);
	valid_in <= 0;
	data_in <= 8'hDC;

	@(posedge clk_4f);
	valid_in <= 1;
	data_in <= 8'hFA;

	@(posedge clk_4f);
	valid_in <= 1;
	data_in <= 8'h33;
	@(posedge clk_4f);
	$finish;
	end
	
	initial clk_4f <= 1;
	always #8 clk_4f <= ~clk_4f;

	initial clk_32f <= 1;
	always #1 clk_32f <= ~clk_32f;


endmodule
