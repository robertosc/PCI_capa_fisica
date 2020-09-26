module paralelo_serial0(input clk_4f,
                        input [7:0] data_in,
                        input valid_in,
                        output reg [7:0] data2send);
    always @(posedge clk_4f)begin
        if (valid_in==0)begin
            data2send <= 8'hBC;
        end
        else begin
            data2send <= data_in;
        end 
    end
endmodule