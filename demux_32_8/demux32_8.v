module demux32_8(output reg [7:0] data_out,
                output reg valid_out,
                input reset,
                input clk_4f,
                input [31:0] lane_0,
                input valid_0);

    reg [1:0] counter1;
    always @(posedge clk_4f)begin
        if(reset==0)begin
            counter1[1:0]<=2'b00;
            valid_out<=0;
        end
        else begin
            if(valid_0 == 1)begin
                if(counter1[1:0] == 2'b00) begin
                    data_out <= lane_0[31:24];
                    valid_out <= valid_0;
                    counter1[1:0] <= 2'b01;
                end

                else if(counter1[1:0] == 2'b01) begin
                    data_out <= lane_0[23:16];
                    valid_out <= valid_0;
                    counter1[1:0] <= 2'b10;
                end

                else if(counter1[1:0] == 2'b10) begin
                    data_out <= lane_0[15:8];
                    valid_out <= valid_0;
                    counter1[1:0] <= 2'b11;
                end

                else if(counter1[1:0] == 2'b11) begin
                    data_out <= lane_0[7:0];
                    valid_out <= valid_0;
                    counter1[1:0] <= 2'b00;
                end
            end

            else begin
                valid_out <=0;
                counter1[1:0] <=2'b00;           
            end
        end    

    end 

endmodule