// test bench for 2input mux circuit
// behavioal modeling

module tb_mux2b_if ();

	reg [1:0] in0, in1;
	reg sel;
	wire [1:0] out;

	//mux2b_if U_Mux2b_if(in0, in1, sel, out);
	// 코드를 완성 하시오

	

	initial
       	begin
		in0 = 2'b00; in1 = 2'b00; sel = 0;
	#50	in0 = 2'b01; in1 = 2'b00; sel = 0;
	#50	in0 = 2'b10; in1 = 2'b00; sel = 0;
	#50	in0 = 2'b11; in1 = 2'b00; sel = 0;
	#50	in0 = 2'b00; in1 = 2'b01; sel = 0;
	#50	in0 = 2'b00; in1 = 2'b10; sel = 0;
	#50	in0 = 2'b00; in1 = 2'b11; sel = 0;
	#50	in0 = 2'b00; in1 = 2'b00; sel = 1;
	#50	in0 = 2'b01; in1 = 2'b00; sel = 1;
	#50	in0 = 2'b10; in1 = 2'b00; sel = 1;
	#50	in0 = 2'b11; in1 = 2'b00; sel = 1;
	#50	in0 = 2'b00; in1 = 2'b01; sel = 1;
	#50	in0 = 2'b00; in1 = 2'b10; sel = 1;
	#50	in0 = 2'b00; in1 = 2'b11; sel = 1;
	#50	$stop;
	end
endmodule
