all: phy_RX

phy_RX:
	iverilog BancoPrueba_RX.v -o Banco
	vvp Banco
	gtkwave RX.vcd