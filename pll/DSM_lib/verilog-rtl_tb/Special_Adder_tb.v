module spec_adder_tb;

	reg [4:0] Data1, Data2, Data3;
	wire [4:0] Out_Data;

	spec_adder u1 (.Data1(Data1), .Data2(Data2), .Data3(Data3), .Out_Data(Out_Data));

	initial begin
		Data1 = 5'b00001;
		Data2 = 5'b00001;
		Data3 = 5'b00001;

	#20	Data1 = 5'b00010;
		Data2 = 5'b00001;
		Data3 = 5'b00001;


	end
endmodule
