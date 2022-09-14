// Accumulator used in the Sigma-Delta Modulator


module accum(In_Data, Clk, reset, Out_Data, Cout);
	
	input [6:0] In_Data;
	input Clk, reset;
	output [6:0] Out_Data;
	output wire Cout;


	wire [6:0] Sum;
	reg [6:0] Temp;

	
	always @(posedge Clk or negedge reset)
	begin
		if (!reset) Temp <= 7'b0000000;
		else Temp <= Sum;
	end

	assign {Cout, Sum} = In_Data + Temp;
	assign Out_Data = Temp;
endmodule
