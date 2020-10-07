all: mux_striping

mux_striping:
	yosys -s script.ys
	sed -i 's/mux_striping/mux_striping_sintetizado/' mux_striping_sintetizado.v
	iverilog -o stripingmux banco_mux_striping.v 
	vvp stripingmux
	gtkwave mux_striping.vcd
	rm stripingmux, mux_striping.vcd