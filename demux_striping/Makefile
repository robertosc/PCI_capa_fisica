yosys:
	yosys -s script.ys

sed:
	sed -i '5 s/demux_striping/demux_striping_sintetizado/' demux_striping_sintetizado.v

iverilog:
	iverilog -o striping banco_demux_striping.v cmos_cells.v
	vvp striping
gtkwave:
	gtkwave demux_striping.vcd

all: yosys sed iverilog gtkwave