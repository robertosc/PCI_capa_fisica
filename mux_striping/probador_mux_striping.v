module probador_mux_striping( 
						input [31:0] data_output,
						input valid_out,
						input [31:0] data_output_sintetizado,
						input valid_out_sintetizado,
						output reg valid_0,  
						output reg valid_1,
						output reg clk_2f,
						output reg reset,
						output reg [31:0] lane_0,
						output reg [31:0] lane_1
						);
						

	initial begin
	$dumpfile("mux_striping.vcd");
	$dumpvars;

	{valid_0,valid_1,reset} <= 0;
	{lane_0,lane_1} <= 32'h00000000;
	
	@(posedge clk_2f);
	reset <=1;
	valid_0 <= 0;
    valid_1 <= 0;
	lane_0 <= 32'hAAAAAAAA;

	@(posedge clk_2f);
	valid_0 <= 1;
    valid_1 <= 1;
	lane_1 <= 32'hEEEEEEEE;

	@(posedge clk_2f);
	valid_0 <= 1;
    valid_1 <= 1;
	lane_0 <= 32'hCCCCCCCC;

	@(posedge clk_2f);
	valid_0 <= 1;
    valid_1 <= 1;
	lane_1 <= 32'hAAAAAAAA;

	@(posedge clk_2f);
	valid_0 <= 1;
    valid_1 <= 1;
	lane_0 <= 32'h11111111;

	@(posedge clk_2f);
	valid_0 <= 1;
    valid_1 <= 1;
	lane_1 <= 32'h99999999;

	@(posedge clk_2f);

	@(posedge clk_2f);

	@(posedge clk_2f);
	$finish;
	end
	
	initial clk_2f <= 0;
	always #2 clk_2f <= ~clk_2f;


endmodule