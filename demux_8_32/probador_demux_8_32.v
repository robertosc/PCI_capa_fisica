module probador_demux_8_32(input [31:0] data_out,
						input [31:0] data_out_estructural,
						input valid_out_estructural,
						input valid_out,
						output reg valid,
						output reg [7:0] data_in,
						output reg clk_4f,
						output reg clk_f,
						output reg reset);
	initial begin
	$dumpfile("demux_8_32.vcd");
	$dumpvars;

	{valid, reset} <= 0;
	{data_in} <= 8'h00;

	
	@(posedge clk_4f);
	valid <= 1;
	data_in <= 8'hEE;

	@(posedge clk_4f);
	reset <= 1;
	valid <= 1;
	data_in <= 8'hFF;

	@(posedge clk_4f);
	valid <= 1;
	data_in <= 8'hFD;

	@(posedge clk_4f);
	valid <= 1;
	data_in <= 8'hCC;

	@(posedge clk_4f);
	valid <= 1;
	data_in <= 8'hAA;

	@(posedge clk_4f);
	valid <= 1;
	data_in <= 8'h12;

	@(posedge clk_4f);
	valid <= 1;
	data_in <= 8'hBB;

	@(posedge clk_4f);
	@(posedge clk_4f);
	data_in <= 8'h00;
	@(posedge clk_4f);
	valid <= 0;
	@(posedge clk_4f);
	@(posedge clk_4f);
	@(posedge clk_4f);

	@(posedge clk_4f);
	@(posedge clk_4f);


	$finish;
	end
	
	initial clk_4f <= 1;
	always #1 clk_4f <= ~clk_4f;

	initial clk_f <= 1;
	always #4 clk_f <= ~clk_f;


endmodule
