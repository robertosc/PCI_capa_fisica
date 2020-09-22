`include "../recirculador/recirculador.v"
`include "../lib/cmos_cell.v"
`include "../demux_striping/demux_striping.v"

module PHY_TX(input [31:0] data_input,
			input valid);