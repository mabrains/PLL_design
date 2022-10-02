// Accumulator used in the Sigma-Delta Modulator


module accum(In_Data, Clk, reset, Out_Data, Cout);
	
	input [23:0] In_Data;
	input Clk, reset;
	output [23:0] Out_Data;
	output wire Cout;


	wire [23:0] Sum;
	reg [23:0] Temp;

	
	always @(posedge Clk or negedge reset)
	begin
		if (!reset) Temp <= 24'b000000000000000000000000;
		else Temp <= Sum;
	end

	assign {Cout, Sum} = In_Data + Temp;
	assign Out_Data = Temp;
endmodule
