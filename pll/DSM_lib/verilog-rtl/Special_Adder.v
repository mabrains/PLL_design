// Adder which sums 2 inputs then subtracts a third input from them

module spec_adder(Data1, Data2, Data3, Out_Data);

	input [4:0] Data1, Data2, Data3;
	output [4:0] Out_Data;

	wire [5:0] Temp;

	assign Temp = Data1 + Data2 - Data3;

	assign Out_Data = Temp[4:0];

endmodule

