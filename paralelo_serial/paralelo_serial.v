module paralelo_serial(input clk_4f,
                        input clk_32f,
                        input [7:0] data_in,
                        input valid_in,
                        input reset,
                        output reg data_out);

    reg [2:0] selector;

    always @(posedge clk_32f) begin
        if (reset == 1) begin
            if(valid_in == 1) begin
                case (selector)
                    0: data_out <= data_in[7];
                    1: data_out <= data_in[6];
                    2: data_out <= data_in[5];
                    3: data_out <= data_in[4];
                    4: data_out <= data_in[3];
                    5: data_out <= data_in[2];
                    6: data_out <= data_in[1];
                    7: begin
                        data_out <= data_in[0];
                        selector <= 0;
                    end
                endcase
            end
            else begin
                case (selector)
                    0: data_out <= 1;
                    1: data_out <= 0;
                    2: data_out <= 1;
                    3: data_out <= 1;
                    4: data_out <= 1;
                    5: data_out <= 1;
                    6: data_out <= 0;
                    7: begin
                        data_out <= 0;
                        selector <= 0;
                    end
                endcase
            end
            selector <= selector + 1;
        end
        
        else begin
            data_out <= 0;
            selector <= 0;
        end
    end
endmodule