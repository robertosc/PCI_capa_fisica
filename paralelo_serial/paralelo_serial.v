module paralelo_serial(input clk_4f,
                        input clk_32f,
                        input [7:0] data_in,
                        input valid_in,
                        input reset,
                        //output reg [7:0] data2send,
                        output reg data_out);

    reg [2:0] selector;
    reg [7:0] data2send;

    always @(posedge clk_4f) begin
        if(reset == 0 || valid_in == 0) begin
            selector [2:0] <=3'b111;
            data2send <= 8'hBC;
        end
        else begin
            data2send <= data_in;  
        end
    end

    always @(posedge clk_32f) begin
        if (reset == 1)begin
            if (selector==3'b111) begin
                data_out <= data2send[7];
                selector <= 3'b110;
            end
            else if (selector==3'b110) begin
                data_out <= data2send[6];
                selector <= 3'b101;
            end            
            else if (selector==3'b101) begin
                data_out <= data2send[5];
                selector <= 3'b100;
            end
            else if (selector==3'b100) begin
                data_out <= data2send[4];
                selector <= 3'b011;
            end 
            else if (selector==3'b011) begin
                data_out <= data2send[3];
                selector <= 3'b010;
            end 
            else if (selector==3'b010) begin
                data_out <= data2send[2];
                selector <= 3'b001;
            end 
            else if (selector==3'b001) begin
                data_out <= data2send[1];
                selector <= 3'b000;
            end 
            else if (selector==3'b000) begin
                data_out <= data2send[0];
                selector <= 3'b111;
            end 
        end
        else begin
            data_out <= 0;
        end
    end
endmodule