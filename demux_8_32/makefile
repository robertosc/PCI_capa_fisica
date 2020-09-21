all: demux_8_32

demux_8_32:
	yosys demux_8_32.ys
	sed -i "s/demux_8_32/sintetizado8a32_cmos/g" sintetizado8a32_cmos.v
	sed -i "s/data_out/data_out_estructural/g" sintetizado8a32_cmos.v
	sed -i "s/valid_out/valid_out_estructural/g" sintetizado8a32_cmos.v
	iverilog banco_demux_8_32.v -o banco
	vvp banco
	rm banco
	gtkwave demux_8_32.vcd