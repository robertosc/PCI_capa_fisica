module probadordemux32_8(input [7:0] data_out,
                        input valid_out,
                        output reg clk_f,
                        output reg clk_4f,
                        output reg [31:0] lane_0,
                        output reg valid_0);
    initial begin
        $dumpfile("demux_32_8.vcd");
	    $dumpvars;
        
        {valid_0}<=0;
        {lane_0}<=32'h00000000;

        @(posedge clk_f);
        valid_0 <=1;
        lane_0 <= 32'hAABBAABB;
        
        @(posedge clk_f);
        valid_0 <=1;
        lane_0 <= 32'hFFCCFFCC;

        @(posedge clk_f);
        valid_0 <=0;
        
        @(posedge clk_f);
        valid_0 <=1;
        lane_0 <= 32'h00000003;
        $finish;    

        @(posedge clk_f);
        valid_0 <=1;
        lane_0 <= 32'h00000003;
        $finish;    
    end

        initial clk_4f <= 0;
	    always #1 clk_4f <= ~clk_4f;

	    initial clk_f <= 0;
	    always #4 clk_f <= ~clk_f;

endmodule