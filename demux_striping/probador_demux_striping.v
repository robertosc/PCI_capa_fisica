module probador_demux_striping( 
						input [31:0] lane_0,
                        input [31:0] lane_1,
						input [31:0] lane_sintetizado0,
                        input [31:0] lane_sintetizado1,
						input valid_out0,
                        input valid_out1,
						input valid_out_sintetizado0,
                        input valid_out_sintetizado1,  
						output reg valid_in,
						output reg clk_2f,
						output reg reset,
						output reg [31:0] data_input);
	initial begin
	$dumpfile("demux_striping.vcd");
	$dumpvars;

	{valid_in, reset} <= 0;
	{data_input} <= 32'h00000000;
	
	@(posedge clk_2f);
    valid_in <= 0;
	data_input <= 32'hFFFFFFFF;

	@(posedge clk_2f);
    valid_in <= 1;
	data_input <= 32'hAAAAAAAA;

	@(posedge clk_2f);
    valid_in <= 1;
	data_input <= 32'hEEEEEEEE;

	@(posedge clk_2f);
	reset<=1;
    valid_in <= 1;
	data_input <= 32'hCCCCCCCC;

	@(posedge clk_2f);
    valid_in <= 1;
	data_input <= 32'hAAAAAAAA;

	@(posedge clk_2f);
	valid_in <= 1;
	data_input <= 32'h11111111;

	@(posedge clk_2f);
	valid_in <= 1;
	data_input <= 32'h99999999;

	@(posedge clk_2f);

	@(posedge clk_2f);
	$finish;
	end
	
	initial clk_2f <= 0;
	always #2 clk_2f <= ~clk_2f;


endmodule