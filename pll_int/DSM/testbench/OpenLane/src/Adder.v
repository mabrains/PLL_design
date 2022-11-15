// Adder for adding the output of the DSM core with constant number

module adder(in_1,in_2,out);

	input [4:0] in_1,in_2;
	output [5:0] out;

	assign out = in_1 + in_2;

endmodule
