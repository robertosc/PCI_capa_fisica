all: phy_TX


phy_TX:
	yosys -s phy_TX.ys
	sed -i "s/phy_TX/phy_TX_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/data_out_sp1/data_out_sp1_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/serial_paralelo/serial_paralelo_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/paralelo_serial/paralelo_serial_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/demux_32_8/demux_32_8_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/demux_striping/demux_striping_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/recirculador/recirculador_sintetizado/g" phy_TX_sintetizado.v
	iverilog BancoPrueba_TX.v -o banco
	vvp banco
	rm banco
	gtkwave TX.vcd
