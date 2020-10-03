module probador_demux_32_8(input [7:0] data_out,
						input [7:0] data_out_estructural,
						input valid_out_estructural,
						input valid_out,
						output reg valid,
						output reg [31:0] data_in,
						output reg clk_4f,
						output reg clk_2f,
						output reg clk_f,
						output reg reset);
	initial begin
	$dumpfile("demux_32_8.vcd");
	$dumpvars;

	{valid, reset} <= 0;
	{data_in} <= 32'h00000000;

	
	@(posedge clk_f);
	//valid <= 1;
	//data_in <= 32'hEEFF9900;

	@(posedge clk_f);
	reset <= 1;
	valid <= 0;
	data_in <= 32'hFFAABB22;

	@(posedge clk_f);
	valid <= 1;
	data_in <= 32'hFD554488;

	@(posedge clk_f);
	valid <= 1;
	data_in <= 32'hCCBBAAFF;

	@(posedge clk_f);
	valid <= 1;
	data_in <= 32'hFD554488;

	@(posedge clk_f);
	valid <= 0;
	data_in <= 32'h12345678;

	@(posedge clk_f);
	valid <= 0;
	data_in <= 32'hBBCCDDEE;

	@(posedge clk_f);

	@(posedge clk_f);
	$finish;
	end
	
	initial clk_4f <= 0;
	always #1 clk_4f <= ~clk_4f;

	initial clk_2f <= 0;
	always #2 clk_2f <= ~clk_2f;

	initial clk_f <= 0;
	always #4 clk_f <= ~clk_f;


endmodule
