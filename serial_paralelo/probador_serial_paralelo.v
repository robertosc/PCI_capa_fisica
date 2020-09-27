module probador_serial_paralelo(input [7:0] data2send,
						        input [7:0]data_out,
								output reg reset,
								output reg valid,
						        output reg data_in,
						        output reg clk_4f,
						        output reg clk_32f);
	initial begin
	$dumpfile("serialparalelo.vcd");
	$dumpvars;

	{valid} <= 1;
	data_in <= 0;
	reset <=0;
	
	@(posedge clk_4f);
	reset <= 0;
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;


	@(posedge clk_4f);
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;

	@(posedge clk_4f);
	reset <=1;
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;

	@(posedge clk_4f);
	data_in<=1;
	reset <=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;

	@(posedge clk_4f);
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;

	@(posedge clk_4f);
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;

	@(posedge clk_4f);
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;

	@(posedge clk_4f);
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;

	@(posedge clk_4f);
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;

	@(posedge clk_4f);
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=1;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;
	@(posedge clk_32f)
	data_in<=0;

	$finish;
	end
	
	initial clk_4f <= 1;
	always #8 clk_4f <= ~clk_4f;

	initial clk_32f <= 1;
	always #1 clk_32f <= ~clk_32f;
endmodule
