yosys:
	yosys -s script.ys

sed:
	sed -i 's/mux_striping/mux_striping_sintetizado/' mux_striping_sintetizado.v

iverilog:
	iverilog -o stripingmux banco_mux_striping.v 
	vvp stripingmux
gtkwave:
	gtkwave mux_striping.vcd

all: yosys sed iverilog gtkwave