// Input channel Mapper


module Mapper(ch_num, DSM_in, add_const);

	input [6:0] ch_num;
	output reg [23:0] DSM_in;
	output reg [7:0] add_const;

	always @(ch_num) begin
		case(ch_num)
		// Channels 0 --> 7
		7'b0000000 : begin
			     DSM_in = 24'b001100110011001100110011;	// 0.2
			     add_const = 5'b10000;			// First Channel (240.2)
			     end

		7'b0000001 : begin
			     DSM_in = 24'b0010011001100110011001101;	// 0.3
			     add_const = 5'b10000;			// First Channel (240.3)
			     end

		7'b0000010 : begin
			     DSM_in = 24'b011001100110011001100110;	// 0.4
			     add_const = 5'b10000;			// First Channel (240.4)
			     end

		7'b0000011 : begin
			     DSM_in = 24'b100000000000000000000000;	// 0.5
			     add_const = 5'b10000;			// First Channel (240.5)
			     end

		7'b0000100 : begin
			     DSM_in = 24'b100110011001100110011010;	// 0.6
			     add_const = 5'b10000;			// First Channel (240.6)
			     end

		7'b0000101 : begin
			     DSM_in = 24'b101100110011001100110011;	// 0.7
			     add_const = 5'b10000;			// First Channel (240.7)
			     end

		7'b0000110 : begin
			     DSM_in = 24'b110011001100110011001101;	// 0.8
			     add_const = 5'b10000;			// First Channel (240.8)
			     end

		7'b0000111 : begin
			     DSM_in = 24'b111001100110011001100110;	// 0.9
			     add_const = 5'b10000;			// First Channel (240.9)
			     end
// --------------------------------------------------------------------------------------------------- //
		// Channels 18 --> 27
		7'b0001000 : begin
			     DSM_in = 24'b000000000000000000000000;	// 0
			     add_const = 5'b01111;			// First Channel (241)
			     end

		7'b0001001 : begin
			     DSM_in = 24'b110011001100110011010;	// 0.1
			     add_const = 5'b01111;			// First Channel (241.1)
			     end

		7'b0001010 : begin
			     DSM_in = 24'b001100110011001100110011;	// 0.2
			     add_const = 5'b01111;			// First Channel (241.2)
			     end

		7'b0001011 : begin
			     DSM_in = 24'b0010011001100110011001101;	// 0.3
			     add_const = 5'b01111;			// First Channel (241.3)
			     end

		7'b0001100 : begin
			     DSM_in = 24'b011001100110011001100110;	// 0.4
			     add_const = 5'b01111;			// First Channel (241.4)
			     end

		7'b0001101 : begin
			     DSM_in = 24'b100000000000000000000000;	// 0.5
			     add_const = 5'b01111;			// First Channel (241.5)
			     end

		7'b0001110 : begin
			     DSM_in = 24'b100110011001100110011010;	// 0.6
			     add_const = 5'b01111;			// First Channel (241.6)
			     end

		7'b0001111 : begin
			     DSM_in = 24'b101100110011001100110011;	// 0.7
			     add_const = 5'b01111;			// First Channel (241.7)
			     end

		7'b0010000 : begin
			     DSM_in = 24'b110011001100110011001101;	// 0.8
			     add_const = 5'b01111;			// First Channel (241.8)
			     end

		7'b0010001 : begin
			     DSM_in = 24'b111001100110011001100110;	// 0.9
			     add_const = 5'b01111;			// First Channel (241.9)
			     end

// --------------------------------------------------------------------------------------------------- //
		// Channels 18 --> 27
		7'b0010010 : begin
			     DSM_in = 24'b000000000000000000000000;	// 0
			     add_const = 5'b01110;			// First Channel (242)
			     end

		7'b0010011 : begin
			     DSM_in = 24'b110011001100110011010;	// 0.1
			     add_const = 5'b01110;			// First Channel (242.1)
			     end

		7'b0010100 : begin
			     DSM_in = 24'b001100110011001100110011;	// 0.2
			     add_const = 5'b01110;			// First Channel (242.2)
			     end

		7'b0010101 : begin
			     DSM_in = 24'b0010011001100110011001101;	// 0.3
			     add_const = 5'b01110;			// First Channel (242.3)
			     end

		7'b0010110 : begin
			     DSM_in = 24'b011001100110011001100110;	// 0.4
			     add_const = 5'b01110;			// First Channel (242.4)
			     end

		7'b0010111 : begin
			     DSM_in = 24'b100000000000000000000000;	// 0.5
			     add_const = 5'b01110;			// First Channel (242.5)
			     end

		7'b0011000 : begin
			     DSM_in = 24'b100110011001100110011010;	// 0.6
			     add_const = 5'b01110;			// First Channel (242.6)
			     end

		7'b0011001 : begin
			     DSM_in = 24'b101100110011001100110011;	// 0.7
			     add_const = 5'b01110;			// First Channel (242.7)
			     end

		7'b0011010 : begin
			     DSM_in = 24'b110011001100110011001101;	// 0.8
			     add_const = 5'b01110;			// First Channel (242.8)
			     end

		7'b0011011 : begin
			     DSM_in = 24'b111001100110011001100110;	// 0.9
			     add_const = 5'b01110;			// First Channel (242.9)
			     end

// --------------------------------------------------------------------------------------------------- //
		// Channels 28 --> 37
		7'b0011100 : begin
			     DSM_in = 24'b000000000000000000000000;	// 0
			     add_const = 5'b01101;			// First Channel (243)
			     end

		7'b0011101 : begin
			     DSM_in = 24'b110011001100110011010;	// 0.1
			     add_const = 5'b01101;			// First Channel (243.1)
			     end

		7'b0011110 : begin
			     DSM_in = 24'b001100110011001100110011;	// 0.2
			     add_const = 5'b01101;			// First Channel (243.2)
			     end

		7'b0011111 : begin
			     DSM_in = 24'b0010011001100110011001101;	// 0.3
			     add_const = 5'b01101;			// First Channel (243.3)
			     end

		7'b0100000 : begin
			     DSM_in = 24'b011001100110011001100110;	// 0.4
			     add_const = 5'b01101;			// First Channel (243.4)
			     end

		7'b0100001 : begin
			     DSM_in = 24'b100000000000000000000000;	// 0.5
			     add_const = 5'b01101;			// First Channel (243.5)
			     end

		7'b0100010 : begin
			     DSM_in = 24'b100110011001100110011010;	// 0.6
			     add_const = 5'b01101;			// First Channel (243.6)
			     end

		7'b0100011 : begin
			     DSM_in = 24'b101100110011001100110011;	// 0.7
			     add_const = 5'b01101;			// First Channel (243.7)
			     end

		7'b0100100 : begin
			     DSM_in = 24'b110011001100110011001101;	// 0.8
			     add_const = 5'b01101;			// First Channel (243.8)
			     end

		7'b0100101 : begin
			     DSM_in = 24'b111001100110011001100110;	// 0.9
			     add_const = 5'b01101;			// First Channel (243.9)
			     end

// --------------------------------------------------------------------------------------------------- //
		// Channels 38 --> 47
		7'b0100110 : begin
			     DSM_in = 24'b000000000000000000000000;	// 0
			     add_const = 5'b01100;			// First Channel (244)
			     end

		7'b0100111 : begin
			     DSM_in = 24'b110011001100110011010;	// 0.1
			     add_const = 5'b01100;			// First Channel (244.1)
			     end

		7'b0101000 : begin
			     DSM_in = 24'b001100110011001100110011;	// 0.2
			     add_const = 5'b01100;			// First Channel (244.2)
			     end

		7'b0101001 : begin
			     DSM_in = 24'b0010011001100110011001101;	// 0.3
			     add_const = 5'b01100;			// First Channel (244.3)
			     end

		7'b0101010 : begin
			     DSM_in = 24'b011001100110011001100110;	// 0.4
			     add_const = 5'b01100;			// First Channel (244.4)
			     end

		7'b0101011 : begin
			     DSM_in = 24'b100000000000000000000000;	// 0.5
			     add_const = 5'b01100;			// First Channel (244.5)
			     end

		7'b0101100 : begin
			     DSM_in = 24'b100110011001100110011010;	// 0.6
			     add_const = 5'b01100;			// First Channel (244.6)
			     end

		7'b0101101 : begin
			     DSM_in = 24'b101100110011001100110011;	// 0.7
			     add_const = 5'b01100;			// First Channel (244.7)
			     end

		7'b0101110 : begin
			     DSM_in = 24'b110011001100110011001101;	// 0.8
			     add_const = 5'b01100;			// First Channel (244.8)
			     end

		7'b0101111 : begin
			     DSM_in = 24'b111001100110011001100110;	// 0.9
			     add_const = 5'b01100;			// First Channel (244.9)
			     end

// --------------------------------------------------------------------------------------------------- //
		// Channels 48 --> 57
		7'b0110000 : begin
			     DSM_in = 24'b000000000000000000000000;	// 0
			     add_const = 5'b01011;			// First Channel (245)
			     end

		7'b0110001 : begin
			     DSM_in = 24'b110011001100110011010;	// 0.1
			     add_const = 5'b01011;			// First Channel (245.1)
			     end

		7'b0110010 : begin
			     DSM_in = 24'b001100110011001100110011;	// 0.2
			     add_const = 5'b01011;			// First Channel (245.2)
			     end

		7'b0110011 : begin
			     DSM_in = 24'b0010011001100110011001101;	// 0.3
			     add_const = 5'b01011;			// First Channel (245.3)
			     end

		7'b0110100 : begin
			     DSM_in = 24'b011001100110011001100110;	// 0.4
			     add_const = 5'b01011;			// First Channel (245.4)
			     end

		7'b0110101 : begin
			     DSM_in = 24'b100000000000000000000000;	// 0.5
			     add_const = 5'b01011;			// First Channel (245.5)
			     end

		7'b0110110 : begin
			     DSM_in = 24'b100110011001100110011010;	// 0.6
			     add_const = 5'b01011;			// First Channel (245.6)
			     end

		7'b0110111 : begin
			     DSM_in = 24'b101100110011001100110011;	// 0.7
			     add_const = 5'b01011;			// First Channel (245.7)
			     end

		7'b0111000 : begin
			     DSM_in = 24'b110011001100110011001101;	// 0.8
			     add_const = 5'b01011;			// First Channel (245.8)
			     end

		7'b0111001 : begin
			     DSM_in = 24'b111001100110011001100110;	// 0.9
			     add_const = 5'b01011;			// First Channel (245.9)
			     end

// --------------------------------------------------------------------------------------------------- //
		// Channels 58 --> 67
		7'b0111010 : begin
			     DSM_in = 24'b000000000000000000000000;	// 0
			     add_const = 5'b01010;			// First Channel (246)
			     end

		7'b0111011 : begin
			     DSM_in = 24'b110011001100110011010;	// 0.1
			     add_const = 5'b01010;			// First Channel (246.1)
			     end

		7'b0111100 : begin
			     DSM_in = 24'b001100110011001100110011;	// 0.2
			     add_const = 5'b01010;			// First Channel (246.2)
			     end

		7'b0111101 : begin
			     DSM_in = 24'b0010011001100110011001101;	// 0.3
			     add_const = 5'b01010;			// First Channel (246.3)
			     end

		7'b0111110 : begin
			     DSM_in = 24'b011001100110011001100110;	// 0.4
			     add_const = 5'b01010;			// First Channel (246.4)
			     end

		7'b0111111 : begin
			     DSM_in = 24'b100000000000000000000000;	// 0.5
			     add_const = 5'b01010;			// First Channel (246.5)
			     end

		7'b1000000 : begin
			     DSM_in = 24'b100110011001100110011010;	// 0.6
			     add_const = 5'b01010;			// First Channel (246.6)
			     end

		7'b1000001 : begin
			     DSM_in = 24'b101100110011001100110011;	// 0.7
			     add_const = 5'b01010;			// First Channel (246.7)
			     end

		7'b1000010 : begin
			     DSM_in = 24'b110011001100110011001101;	// 0.8
			     add_const = 5'b01010;			// First Channel (246.8)
			     end

		7'b1000011 : begin
			     DSM_in = 24'b111001100110011001100110;	// 0.9
			     add_const = 5'b01010;			// First Channel (246.9)
			     end

// --------------------------------------------------------------------------------------------------- //
		// Channels 68 --> 77
		7'b1000100 : begin
			     DSM_in = 24'b000000000000000000000000;	// 0
			     add_const = 5'b01001;			// First Channel (247)
			     end

		7'b1000101 : begin
			     DSM_in = 24'b110011001100110011010;	// 0.1
			     add_const = 5'b01001;			// First Channel (247.1)
			     end

		7'b1000110 : begin
			     DSM_in = 24'b001100110011001100110011;	// 0.2
			     add_const = 5'b01001;			// First Channel (247.2)
			     end

		7'b1000111 : begin
			     DSM_in = 24'b0010011001100110011001101;	// 0.3
			     add_const = 5'b01001;			// First Channel (247.3)
			     end

		7'b1001000 : begin
			     DSM_in = 24'b011001100110011001100110;	// 0.4
			     add_const = 5'b01001;			// First Channel (247.4)
			     end

		7'b1001001 : begin
			     DSM_in = 24'b100000000000000000000000;	// 0.5
			     add_const = 5'b01001;			// First Channel (247.5)
			     end

		7'b1001010 : begin
			     DSM_in = 24'b100110011001100110011010;	// 0.6
			     add_const = 5'b01001;			// First Channel (247.6)
			     end

		7'b1001011 : begin
			     DSM_in = 24'b101100110011001100110011;	// 0.7
			     add_const = 5'b01001;			// First Channel (247.7)
			     end

		7'b1001100 : begin
			     DSM_in = 24'b110011001100110011001101;	// 0.8
			     add_const = 5'b01001;			// First Channel (247.8)
			     end

		7'b1001101 : begin
			     DSM_in = 24'b111001100110011001100110;	// 0.9
			     add_const = 5'b01001;			// First Channel (247.9)
			     end

// --------------------------------------------------------------------------------------------------- //
		// Channel 78
		7'b1001110 : begin
			     DSM_in = 24'b000000000000000000000000;	// 0
			     add_const = 5'b01000;			// First Channel (248)
			     end

// --------------------------------------------------------------------------------------------------- //
		// Channel 0			   
		default    : begin
			     DSM_in = 24'b001100110011001100110011;	// 0.2
			     add_const = 5'b11110000;			// First Channel (240.2)
			      end
		endcase

	end



endmodule