iverilog:
	iverilog -o striping banco_demux_striping.v
	vvp striping
gtkwave:
	gtkwave demux_striping.vcd

all: iverilog gtkwave