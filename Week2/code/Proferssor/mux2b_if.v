// exam3.v
/* 2 input 2bit Mux design */
`timescale 1ns/10ps

module mux2b_if ( 
	input [1:0] in0, 
	input [1:0] in1,
	input       sel,
	output [1:0] out
);

	reg [1:0] out;

	always @(sel or in0 or in1) 
	begin
		if ( sel == 0)
			out = in0;
		else 
			out = in1;
	end

endmodule
