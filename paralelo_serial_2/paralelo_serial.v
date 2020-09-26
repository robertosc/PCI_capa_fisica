`include "paralelo_serial0.v"
`include "paralelo_serial1.v"

module paralelo_serial(input [7:0] data_in, 
                        input valid_in,
                        input reset,
                        input clk_4f,
                        input clk_32f,
                        output data_out_fin);
    wire [7:0] cable;
    
    paralelo_serial0 parte0(.clk_4f(clk_4f), .data_in(data_in), .valid_in(valid_in), .data2send(cable));

    paralelo_serial1 parte1(.clk_32f(clk_32f), .data2send(cable),.reset (reset), .data_out(data_out_fin));

endmodule 
