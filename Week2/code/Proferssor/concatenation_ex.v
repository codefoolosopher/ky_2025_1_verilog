`timescale 1ns / 1ps

module concat_ex (
    input   [1:0] a,
    input   [1:0] b,
    input   [1:0] c,
    output  [5:0] d,
    output  [5:0] e,
    output  [7:0] f
);
    // a, b, c를 결합하여 d에 할당
    assign d = {a, b, c};       // a,b,c를 결합
    assign e = {4'b0101,a};   // 0101와 a를 결합
    assign f = { 4{a} };        // aaaa로 결합
endmodule

