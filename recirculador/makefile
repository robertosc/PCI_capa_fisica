all: recirculador

recirculador:
	yosys recirculador.ys
	sed -i "s/recirculador/sintetizado_recirc_cmos/g" sintetizado_recirc_cmos.v
	sed -i "s/demux_0/demux_0_estructural/g" sintetizado_recirc_cmos.v
	sed -i "s/demux_1_probador/demux_1_probador_estructural/g" sintetizado_recirc_cmos.v
	sed -i "s/valid_out/valid_out_estructural/g" sintetizado_recirc_cmos.v
	iverilog banco_recirculador.v -o banco
	vvp banco
	rm banco
	gtkwave recirculador.vcd