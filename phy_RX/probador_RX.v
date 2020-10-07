module probador_RX(output reg data_paralelo_serial_0,
					output reg data_paralelo_serial_1,
					output reg reset,
					output reg clk_32f,
					output reg clk_4f,
					output reg clk_2f,
					//input [31:0] data_output_sintetizado,
					//input valid_out_sintetizado,
					input [31:0] data_output,
					input valid_out);
	initial begin
	$dumpfile("RX.vcd");
	$dumpvars;

	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	reset <=0;
	
	//primer BC
	@(posedge clk_4f);
	@(posedge clk_4f);
	
	@(posedge clk_4f);
	reset <= 1;
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=1;

	//Segundo BC
	@(posedge clk_4f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=1;

	//Tercer BC
	@(posedge clk_4f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;

	//Cuarto BC
	@(posedge clk_4f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	reset <=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;


	//Señal interes
	@(posedge clk_4f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=0;

	@(posedge clk_4f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=0;

	@(posedge clk_4f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;

	@(posedge clk_4f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;

	@(posedge clk_4f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;

	@(posedge clk_4f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	
	@(posedge clk_4f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;

	@(posedge clk_4f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=0;
	@(posedge clk_32f);
	data_paralelo_serial_0<=0;
	data_paralelo_serial_1<=1;
	@(posedge clk_32f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;

	@(posedge clk_4f);
	data_paralelo_serial_0<=1;
	data_paralelo_serial_1<=1;

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
