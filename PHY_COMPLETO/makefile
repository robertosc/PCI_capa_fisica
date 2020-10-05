all: phy_completo

phy_completo:
	iverilog BancoPrueba_phy.v -o banco cmos_cells.v
	vvp banco
	rm banco
	gtkwave completo.vcd