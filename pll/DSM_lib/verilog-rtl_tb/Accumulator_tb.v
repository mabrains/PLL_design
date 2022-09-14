
module accum_tb;

	reg [6:0] In_Data;
	reg Clk, reset;
	wire [6:0] Out_Data;
	wire Cout;

	accum u1 (.In_Data(In_Data), .Clk(Clk), .reset(reset), .Out_Data(Out_Data), .Cout(Cout));

	initial begin

		In_Data = 7'b0000001;
		reset = 1'b1;

	#20	In_Data = 7'b0000001;
		reset = 1'b0;

	#20	In_Data = 7'b00000001;
		reset = 1'b1;


	#180	In_Data = 7'b0000010;
		reset = 1'b1;	
	
	end

	initial
		Clk = 1'b0;

	always
	#5 Clk = ~Clk;
	

endmodule
