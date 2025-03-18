// half_adder.v
// gate primitives method for half adder circuit

`timescale 1ns/10ps

module half_adder(  // module 이름
	input a,                    // 입출력 포트 목록
	input b,
	output sum,
	output cout
);

	xor(sum, a,b);              // 게이트 
	and(cout, a,b);            // 프리미티브 인스턴스


endmodule

