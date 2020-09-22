all: demux_32_8

demux_32_8:
	yosys demux_32_8.ys
	sed -i "s/demux32_8/sintetizado32a8_cmos/g" sintetizado32a8_cmos.v
	sed -i "s/data_out/data_out_estructural/g" sintetizado32a8_cmos.v
	sed -i "s/valid_out/valid_out_estructural/g" sintetizado32a8_cmos.v
	iverilog BancoPrueba32_8.v -o banco
	vvp banco
	rm banco
	gtkwave demux_32_8.vcd