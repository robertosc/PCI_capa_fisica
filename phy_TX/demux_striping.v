module demux_striping(
    input clk_2f,
	input [31:0] data_recirculador_active,
	input valid_recirculador,
	input reset,
	output reg [31:0] data_demux_strp_0,
	output reg [31:0] data_demux_strp_1,
    output reg valid_demux_strp_0,
    output reg valid_demux_strp_1
    );
	reg sel;

	always @(posedge clk_2f) begin
		if(reset == 0)begin
			sel<=0;
			valid_demux_strp_0 <= 0;
			valid_demux_strp_1 <= 0;
			data_demux_strp_1 <= 0;
			data_demux_strp_0<= 0;
		end
		else begin
			if(valid_recirculador == 1 && sel == 0 ) begin
				data_demux_strp_1 <= data_recirculador_active;
				sel <= 1;
				valid_demux_strp_1<=1;
			end

			else if(valid_recirculador == 1 && sel == 1) begin
				data_demux_strp_0 <= data_recirculador_active;
				sel <= 0;
				valid_demux_strp_0<=1;
			end

			else if (valid_recirculador == 0 && sel == 0) begin
				sel <= 1;
				valid_demux_strp_1<=0;
			end
			else if (valid_recirculador == 0 && sel == 1) begin
				sel <= 0;
				valid_demux_strp_0<=0;
			end
		end
	end

endmodule