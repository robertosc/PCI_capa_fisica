iverilog:
	iverilog -o striping banco_mux_striping.v
	vvp striping
gtkwave:
	gtkwave mux_striping.vcd

all: iverilog gtkwave