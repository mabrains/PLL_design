// Full implementation of the Sigma-Delta Modulator

module DSM(In_Data, Clk, reset, Out_Data);

	input [6:0] In_Data;
	input Clk, reset;
	output wire [4:0] Out_Data;


	wire [6:0] Sum1, Sum2, Sum3;
	wire [4:0] Cout1, Cout2, Cout3, Cout32;
	reg [4:0] DCout32, DCout3;	// Delayed Cout2 and Cout3

	assign Cout1[4:1] = 4'b0000;
	assign Cout2[4:1] = 4'b0000;
	assign Cout3[4:1] = 4'b0000;

	accum u1 (.In_Data(In_Data), .Clk(Clk), .reset(reset), .Out_Data(Sum1), .Cout(Cout1[0]));
	accum u2 (.In_Data(Sum1), .Clk(Clk), .reset(reset), .Out_Data(Sum2), .Cout(Cout2[0]));
	accum u3 (.In_Data(Sum2), .Clk(Clk), .reset(reset), .Out_Data(Sum3), .Cout(Cout3[0]));

	always @(posedge Clk or negedge reset)
	begin
		if (!reset) DCout3 <= 5'b00000;
		else DCout3 <= Cout3;
	end

	spec_adder u4 (.Data1(Cout2), .Data2(Cout3), .Data3(DCout3), .Out_Data(Cout32));
	
	always @(posedge Clk or negedge reset)
	begin
		if (!reset) DCout32 <= 5'b00000;
		else DCout32 <= Cout32;
	end

	spec_adder u5 (.Data1(Cout1), .Data2(Cout32), .Data3(DCout32), .Out_Data(Out_Data));

endmodule
