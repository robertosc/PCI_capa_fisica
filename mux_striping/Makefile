yosys:
	yosys -s script.ys

sed:
	sed -i '5 s/mux2a1_2b_desc_conductual/sintetizado2a1_2b/' sintetizado2a1_2b.v

iverilog:
	iverilog -o striping banco_mux_striping.v cmos_cells.v
	vvp striping
gtkwave:
	gtkwave mux_striping.vcd

all: iverilog gtkwave