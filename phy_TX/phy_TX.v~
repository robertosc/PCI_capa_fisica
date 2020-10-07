`include "../recirculador/recirculador.v"
//`include "../lib/cmos_cell.v"
`include "../demux_striping/demux_striping.v"
`include "../demux_32_8/demux_32_8.v"
`include "../paralelo_serial/paralelo_serial.v"

module phy_TX(input [31:0] data_input,
			input valid,
			input active,
			input reset,
			input clk_2f,
			input clk_f,
			input clk_4f,
			input clk_32f,
			output data_out_ps0,
			output data_out_ps1);

	wire [31:0] data_input, demux_0, demux_1_probador, lane_0, lane_1;
	wire [7:0] demux0_paraleloserial, demux1_paraleloserial;
	wire clk_2f, clk_f, clk_4f, valid, active, valid_out, reset;
	wire valid_demux_striping_0, valid_demux_striping_1, valid_out0, valid_out1;

	recirculador recirculador_inicial(
		/*AUTOINST*/
	);

	demux_striping u_demux_striping(
		/*AUTOINST*/
	);

	demux_32_8 demux_lane_0(
		/*AUTOINST*/
	);

	paralelo_serial paralelo_serial0(
		/*AUTOINST*/
	);
	
	demux_32_8 demux_lane_1(
		/*AUTOINST*/
	);

	paralelo_serial paralelo_serial1(
		/*AUTOINST*/
	);



endmodule
