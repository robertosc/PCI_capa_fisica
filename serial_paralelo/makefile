yosys:
	yosys -s serial_paralelo.ys

sed:
	sed -i "s/serial_paralelo/sintetizado_serial_paralelo/g" sintetizado_serial_paralelo.v

iverilog:
	iverilog -o serialparalelo Banco_serial_paralelo.v 
	vvp serialparalelo
gtkwave:
	gtkwave serialparalelo.vcd

all: yosys sed iverilog gtkwave