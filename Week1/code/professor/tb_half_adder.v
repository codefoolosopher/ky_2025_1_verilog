// test bench for half-adder circuit " tb_exam_ha.v "

module tb_ha();

	reg a, b;
	wire sum, cout;

  half_adder U_HA(a, b, sum, cout);

	initial
	begin
		a = 0; b = 0;
	#50	a = 1; b = 0;
	#50	a = 0; b = 1;
	#50	a = 1; b = 1;
	#50	$stop;
	end

endmodule
