module probador_phy(input [31:0] data_final,
						input valid_final,
						output reg active,
						output reg valid,
						output reg reset,
						output reg [31:0] data_input,
						output reg clk_f,
						output reg clk_2f,
						output reg clk_4f,
						output reg clk_32f);
	initial begin
	$dumpfile("completo.vcd");
	$dumpvars;

	{valid, active, reset} <= 0;
	{data_input} <= 32'h00000000;

	
	@(posedge clk_2f);
	active <= 1;
	valid <= 1;
	data_input <= 32'hFFFFEEEE;

	@(posedge clk_2f);
	active <= 1;
	valid <= 1;
	reset <= 1;
	data_input <= 32'hFFEEEEEE;

	//Manda BC
	@(posedge clk_2f);
	active <= 1;
	valid <= 1;
	data_input <= 32'hADFEBA01;

	@(posedge clk_2f);
	active <= 1;
	valid <= 1;
	data_input <= 32'hFAFAFA01;

	@(posedge clk_2f);
	active <= 1;
	valid <= 1;
	data_input <= 32'hAAAA1234;

	@(posedge clk_2f);
	active <= 1;
	valid <= 1;
	data_input <= 32'h12345678;

	@(posedge clk_2f);
	active <= 0;
	valid <= 1;
	data_input <= 32'hBBBBAAAA;

	@(posedge clk_2f);

	@(posedge clk_2f);

	@(posedge clk_2f);

	@(posedge clk_2f);

	@(posedge clk_2f);

	@(posedge clk_2f);

	@(posedge clk_2f);
	@(posedge clk_2f);
	$finish;
	end
	
	initial clk_f <= 1;
	initial clk_2f <= 1;
	initial clk_4f <= 1;
	initial clk_32f <= 1;

	always #24 clk_f <= ~clk_f;
	always #16 clk_2f <= ~clk_2f;
	always #8 clk_4f <= ~clk_4f;
	always #1 clk_32f <= ~clk_32f;
	


endmodule
