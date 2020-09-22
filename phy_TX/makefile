all: phy_TX

phy_TX:
	iverilog BancoPrueba_TX.v -o banco
	vvp banco
	rm banco
	gtkwave TX.vcd
