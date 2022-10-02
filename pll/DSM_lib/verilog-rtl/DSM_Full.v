

module DSM(In_CH, Clk, reset, Out_Data);

	input [6:0] In_CH;
	input Clk, reset;
	output wire [7:0] Out_Data;

	
	wire [23:0] DSM_in;
	wire [4:0] add_const, DSM_out;

	
	

	Mapper u1 (.ch_num(In_CH), .DSM_in(DSM_in), .add_const(add_const));	
	DSM u2 (.In_Data(DSM_in), .Clk(Clk), .reset(reset), .Out_Data(DSM_out));
	adder u3 (.in_1(add_const) , .in_2(add_const) , .out(Out_Data));


endmodule


