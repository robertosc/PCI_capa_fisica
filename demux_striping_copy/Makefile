all: demux_striping

demux_striping:
	yosys script.ys
	sed -i "s/demux_striping/demux_striping_sintetizado/g" demux_striping_sintetizado.v
	sed -i "s/lane_0/lane_0_estructural/g" demux_striping_sintetizado.v
	sed -i "s/lane_1/lane_1_estructural/g" demux_striping_sintetizado.v
	sed -i "s/valid_out0/valid_out0_estructural/g" demux_striping_sintetizado.v
	sed -i "s/valid_out1/valid_out1_estructural/g" demux_striping_sintetizado.v
	iverilog -o striping banco_demux_striping.v 
	vvp striping
	rm striping
	gtkwave demux_striping.vcd
