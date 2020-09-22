all: yosys sed phy_TX

yosys:
	yosys -s script.ys

sed:
	sed -i "s/phy_TX/phy_TX_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/demux32_8/demux32_8_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/demux_striping/demux_striping_sintetizado/g" phy_TX_sintetizado.v
	sed -i "s/recirculador/recirculador_sintetizado/g" phy_TX_sintetizado.v

phy_TX:
	iverilog BancoPrueba_TX.v -o banco
	vvp banco
	rm banco
	gtkwave TX.vcd
