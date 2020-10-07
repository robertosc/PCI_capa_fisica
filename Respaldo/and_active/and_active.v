module and_active(  input active_serial_paralelo_0,
                    input active_serial_paralelo_1,
                    output reg data_and_active ); 
        always@(*)begin
        data_and_active <= active_serial_paralelo_0 && active_serial_paralelo_1;
        end

endmodule