module shift_ex (
    input  [3:0] a,
    output [3:0] b,  // a를 왼쪽으로 2비트 시프트
    output [3:0] c   // a를 오른쪽으로 2비트 시프트
);

    assign b = a << 2;
    assign c = a >> 2;
endmodule
