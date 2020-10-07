yosys:
	yosys -s script.ys

sed:
	sed -i "s/demux_striping/demux_striping_sintetizado/g" demux_striping_sintetizado.v

iverilog:
	iverilog -o striping banco_demux_striping.v 
	vvp striping
gtkwave:
	gtkwave demux_striping.vcd

all: yosys sed iverilog gtkwave