all: phy_completo

phy_completo:
	yosys -s PHY_COMPLETO.ys
	sed -i "s/phy/PHY_COMPLETO_sintetizado/g" PHY_COMPLETO_sintetizado.v
	sed -i "s/data_output/data_output_sintetizado/g" PHY_COMPLETO_sintetizado.v
	sed -i "s/valid_out/valid_out_sintetizado/g" PHY_COMPLETO_sintetizado.v
	sed -i "s/and_active/and_active_sintetizado/g" PHY_COMPLETO_sintetizado.v
	sed -i "s/demux_32_8/demux_32_8_sintetizado/g" PHY_COMPLETO_sintetizado.v
	sed -i "s/demux_8_32/demux_8_32_sintetizado/g" PHY_COMPLETO_sintetizado.v
	sed -i "s/demux_striping/demux_striping_sintetizado/g" PHY_COMPLETO_sintetizado.v
	sed -i "s/mux_striping/mux_striping_sintetizado/g" PHY_COMPLETO_sintetizado.v
	sed -i "s/paralelo_serial/paralelo_serial_sintetizado/g" PHY_COMPLETO_sintetizado.v
	sed -i "s/phy/phy_sintetizado/g" PHY_COMPLETO_sintetizado.v
	sed -i "s/phy_RX/phy_RX_sintetizado/g" PHY_COMPLETO_sintetizado.v
	sed -i "s/phy_TX/phy_TX_sintetizado/g" PHY_COMPLETO_sintetizado.v
	sed -i "s/recirculador/recirculador_sintetizado/g" PHY_COMPLETO_sintetizado.v
	sed -i "s/serial_paralelo/serial_paralelo_sintetizado/g" PHY_COMPLETO_sintetizado.v
	iverilog BancoPrueba_phy.v -o banco cmos_cells.v
	vvp banco
	rm banco
	gtkwave completo.vcd