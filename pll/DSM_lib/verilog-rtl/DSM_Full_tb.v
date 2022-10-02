
module DSM_Full_tb;

	reg [6:0] In_CH;
	reg Clk, reset;
	wire [4:0] Out_Data;
	


	DSM_Full u1 (.In_CH(In_CH), .Clk(Clk), .reset(reset), .Out_Data(Out_Data));

	initial begin

		In_CH = 7'b0000000;
		reset = 1'b1;

	#20	In_CH = 7'b0000000;
		reset = 1'b0;

	#20	In_CH = 7'b0000000;
		reset = 1'b1;


	#180	In_CH = 7'b0000000;
		reset = 1'b1;	
	
	end

	initial
		Clk = 1'b0;

	always
	#5 Clk = ~Clk;

endmodule