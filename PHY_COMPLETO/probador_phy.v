module probador_phy(	input [31:0] data_output,
						input [31:0] data_output_sintetizado,
						input valid_out,
						input valid_out_sintetizado,
						input data_and_active,
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

	{valid, reset} <= 0;
	//{active} <= 0;
	{data_input} <= 32'h00000000;

	
	@(posedge clk_2f);
	//active <= 1;
	valid <= 0;
	data_input <= 32'hAAAAAAAA;

	@(posedge clk_2f);
	@(posedge clk_2f);
	@(posedge clk_2f);
	//active <= 1;
	valid <= 0;
	reset <= 1;
	data_input <= 32'hAAAAAAAA;

	//Manda BC
	@(posedge clk_2f);
	//active <= 1;
	valid <= 1;
	data_input <= 32'hFF00FF00;

	@(posedge clk_2f);
	//active <= 1;
	valid <= 1;
	data_input <= 32'hFAFAFAFA;

	@(posedge clk_2f);
	valid <= 1;
	data_input <= 32'h12345678;

	@(posedge clk_2f);
	valid <= 1;
	data_input <= 32'h00FF00FF;

	@(posedge clk_2f);
	valid <= 1;
	data_input <= 32'h555533333;

	@(posedge clk_2f);
	data_input <= 32'hBCBCBCBC;

	@(posedge clk_2f);
	valid <= 0;
	data_input <= 32'hBCBCBCBC;

	@(posedge clk_2f);
	valid <= 1;
	data_input <= 32'hF0001111;

	@(posedge clk_2f);
	valid <= 1;
	data_input <= 32'h77770000;

	@(posedge clk_2f);
	data_input <= 32'hFFFFFFFF;

	@(posedge clk_2f);
	data_input <= 32'hA0A0A0;

	@(posedge clk_2f);
	valid <= 0;
	data_input <= 32'hBBBBAAAA;

	@(posedge clk_2f);
	data_input <= 32'hFFFFFFFF;
	valid <= 1;
	@(posedge clk_2f);
	data_input <= 32'hF0001234;

	@(posedge clk_2f);
	valid <= 0;

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
