all: serial_paralelo

serial_paralelo:
	yosys -s serial_paralelo.ys
	sed -i "s/serial_paralelo/sintetizado_serial_paralelo/g" sintetizado_serial_paralelo.v
	iverilog -o serialparalelo Banco_serial_paralelo.v 
	vvp serialparalelo
	gtkwave serialparalelo.vcd
	rm serialparalelo.vcd
	rm serial_paralelo