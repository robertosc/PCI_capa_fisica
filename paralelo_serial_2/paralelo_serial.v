`include "paralelo_serial0.v"
`include "paralelo_serial1.v"

module paralelo_serial(input [7:0] data_in, 
                        input valid_in,
                        input clk_4f,
                        input clk_32f,
                        output reg data_out);
    wire [7:0] 0a1;
    
    paralelo_serial0 parte0(.clk_4f(clk_4f), .data_in(data_in), .valid_in(valid_in), .data2send(0a1);

    paralelo_serial1 parte1(.clk_32f(clk_32f), .data2send(0a1), .data_out(data_out));

endmodule 
