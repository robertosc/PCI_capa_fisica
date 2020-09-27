yosys:
	yosys -s script.ys

sed:
	sed -i "s/demux_striping/demux_striping_sintetizado/g" demux_striping_sintetizado.v

iverilog:
	iverilog -o serialparalelo Banco_serial_paralelo.v 
	vvp serialparalelo
gtkwave:
	gtkwave serialparalelo.vcd

all: iverilog gtkwave