all: phy_TX


phy_TX:
	yosys -s phy_TX.ys
	sed -i "s/phy_TX/phy_TX_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/data_out_0/data_out_0_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/data_out_1/data_out_1_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/valid_out0/valid_out0_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/valid_out1/valid_out1_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/demux_32_8/demux_32_8_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/demux_striping/demux_striping_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/recirculador/recirculador_sintetizado/g" phy_TX_sintetizado.v
	iverilog BancoPrueba_TX.v -o banco
	vvp banco
	rm banco
	gtkwave TX.vcd
	rm TX.vcd
