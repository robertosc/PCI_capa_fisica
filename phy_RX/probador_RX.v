module probador_RX(output reg serial_data_0,
					output reg serial_data_1,
					output reg reset,
					output reg clk_32f,
					output reg clk_4f,
					output reg clk_2f,
					input [31:0] data_final,
					input valid_final);
	initial begin
	$dumpfile("RX.vcd");
	$dumpvars;

	serial_data_0<=0;
	serial_data_1<=0;
	reset <=0;
	
	//primer BC
	@(posedge clk_4f);
	@(posedge clk_4f);
	
	@(posedge clk_4f);
	reset <= 1;
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=1;

	//Segundo BC
	@(posedge clk_4f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=1;

	//Tercer BC
	@(posedge clk_4f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;

	//Cuarto BC
	@(posedge clk_4f);
	serial_data_0<=1;
	serial_data_1<=1;
	reset <=1;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;


	//Señal interes
	@(posedge clk_4f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=0;

	@(posedge clk_4f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=0;

	@(posedge clk_4f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;

	@(posedge clk_4f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;

	@(posedge clk_4f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;

	@(posedge clk_4f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	
	@(posedge clk_4f);
	serial_data_0<=1;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;

	@(posedge clk_4f);
	serial_data_0<=0;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=0;
	@(posedge clk_32f);
	serial_data_0<=0;
	serial_data_1<=1;
	@(posedge clk_32f);
	serial_data_0<=1;
	serial_data_1<=1;

	@(posedge clk_4f);
	serial_data_0<=1;
	serial_data_1<=1;

	@(posedge clk_4f);

	@(posedge clk_4f);

	@(posedge clk_4f);
	$finish;
	end
	
	initial clk_2f <= 1;
	always #16 clk_2f <= ~clk_2f;

	initial clk_4f <= 1;
	always #8 clk_4f <= ~clk_4f;

	initial clk_32f <= 1;
	always #1 clk_32f <= ~clk_32f;
endmodule
