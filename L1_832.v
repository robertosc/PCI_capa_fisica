module L1_832 (
    output reg [31:0] data_out_L1_832,
    output reg valid_out_L1_832,
    input clk_4f,
    input clk_f,
    input[7:0] data_in_L1_832,
    input reset_L,
    input valid_in_L1_832);


    reg valid;
    reg [1:0] selector;
    reg [31:0] q1,q1f; // Salida del mux. Se guarda cuando almacena 4 datos.
//Multiplexor con bit de valid
    always @ (posedge clk_4f) begin
            if (reset_L == 1) begin
                selector <= 'b00;
                q1 <= 0;
                q1f <= 0;
            end
            else begin
               if (selector == 'b00) begin
                    q1[31:24] <=  data_in_L1_832;
                    selector <= selector +1 ;
                    q1f <= q1;
               end 
                if (selector == 'b01 ) begin
                    q1[23:16] <=  data_in_L1_832;
                    selector <= selector +1 ;
                end 
                if (selector == 'b10 ) begin
                    q1[15:8] <=  data_in_L1_832;
                    selector <= selector +1 ;
                end 
                if (selector == 'b11 ) begin
                    q1[7:0] <=  data_in_L1_832;
                    selector <= selector +1 ;
                end
            end
        end 

    always @ (posedge clk_f) begin
         if (reset_L == 1) begin
                valid_out_L1_832 <= 'b00;
                data_out_L1_832 <= 'b00;
                valid <= 0;
            end
        else begin
            data_out_L1_832 <= q1;
            if (valid == 1) begin
                data_out_L1_832 <= q1f;
            end
            valid <= valid_in_L1_832;
            valid_out_L1_832 <= valid;
        end
    end

endmodule
