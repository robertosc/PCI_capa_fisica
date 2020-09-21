module probador_recirc(input [31:0] demux_0,
						input [31:0] demux_1_probador,
						input valid_out,
						output reg active,
						output reg valid,
						output reg [31:0] data_input,
						output reg clk_2f);
	initial begin
	$dumpfile("recirculacion.vcd");
	$dumpvars;

	{valid, active} <= 0;
	{data_input} <= 32'h00000000;
	
	@(posedge clk_2f);
	active <= 1;
	valid <= 0;
	data_input <= 32'hFFFFEEEE;

	@(posedge clk_2f);
	active <= 1;
	valid <= 1;
	data_input <= 32'hFFEEEEEE;

	@(posedge clk_2f);
	active <= 1;
	valid <= 1;
	data_input <= 32'hFFEEEEEE;

	@(posedge clk_2f);
	active <= 1;
	valid <= 0;
	data_input <= 32'hCCEEEEEE;

	@(posedge clk_2f);
	active <= 1;
	valid <= 1;
	data_input <= 32'hAAAA1234;

	@(posedge clk_2f);
	active <= 0;
	valid <= 1;
	data_input <= 32'h12345678;

	@(posedge clk_2f);
	active <= 0;
	valid <= 1;
	data_input <= 32'hBBBBAAAA;

	@(posedge clk_2f);

	@(posedge clk_2f);
	$finish;
	end
	
	initial clk_2f <= 0;
	always #2 clk_2f <= ~clk_2f;


endmodule
