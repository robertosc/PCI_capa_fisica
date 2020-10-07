all: phy_RX

phy_RX:
	yosys -s phy_RX.ys
	sed -i "s/phy_RX/phy_RX_sintetizado/g" phy_RX_sintetizado.v
	sed -i "s/data_final/data_final_sintetizado/g" phy_RX_sintetizado.v
	sed -i "s/valid_final/valid_final_sintetizado/g" phy_RX_sintetizado.v
	sed -i "s/serial_paralelo/serial_paralelo_sintetizado/g" phy_RX_sintetizado.v
	sed -i "s/demux_8_32/demux_8_32_sintetizado/g" phy_RX_sintetizado.v
	sed -i "s/mux_striping/mux_striping_sintetizado/g" phy_RX_sintetizado.v
	iverilog BancoPrueba_RX.v -o banco cmos_cells.v
	vvp banco
	rm banco
	gtkwave RX.vcd