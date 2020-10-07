module probador_recirc(input [31:0] demux_0,
						input [31:0] demux_1_probador,
						input [31:0] demux_0_estructural,
						input [31:0] demux_1_probador_estructural,
						input valid_out,
						input valid_out_estructural,
						output reg active,
						output reg valid,
						output reg [31:0] data_input,
						output reg clk_2f,
						output reg reset);
	initial begin
	$dumpfile("recirculador.vcd");
	$dumpvars;

	{valid, active, reset} <= 0;
	{data_input} <= 32'h00000000;
	
	@(posedge clk_2f);
	reset <= 1;
	active <= 1;
	valid <= 0;
	data_input <= 32'hFFFFEE9E;

	@(posedge clk_2f);
	active <= 1;
	valid <= 1;
	data_input <= 32'h13EEE7EE;

	@(posedge clk_2f);
	active <= 1;
	valid <= 1;
	data_input <= 32'h5FEE23EE;

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
