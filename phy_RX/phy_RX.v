`include "../serial_paralelo/serial_paralelo.v"
`include "../mux_striping/mus_striping.v"
`include "../demux_8_32/demux_8_32.v"

module phy_RX(input serial_data_0,
				input serial_data_1,
				output reg [7:0] data_out_0,
				output reg [7:0] data_out_1,
				output reg valid_out);

				