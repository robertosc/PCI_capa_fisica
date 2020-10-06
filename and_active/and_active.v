module and_active(  input active_0,
                    input active_1,
                    output reg active ); 
        always@(*)begin
        active <= active_0 && active_1;
        end

endmodule