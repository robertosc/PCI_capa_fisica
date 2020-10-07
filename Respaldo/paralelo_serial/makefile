all: paralelo_serial

paralelo_serial:
	yosys paralelo_serial.ys
	sed -i "s/paralelo_serial/sintetizado_paralelo_serial_cmos/g" sintetizado_paralelo_serial_cmos.v
	sed -i "s/data_out/data_out_estructural/g" sintetizado_paralelo_serial_cmos.v
	#sed -i "s/data2send/data2send_estructural/g" sintetizado_paralelo_serial_cmos.v
	iverilog -o paraleloserial banco_paralelo_serial.v
	vvp paraleloserial
	gtkwave paraleloserial.vcd
	rm paraleloserial, paraleloserial.vcd