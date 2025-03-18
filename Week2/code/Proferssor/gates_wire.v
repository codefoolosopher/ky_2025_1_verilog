// wire example
`timescale 1ns / 1ps

module gates_wire(
    input a,
    input b,
    input c,
    output wire d
    );

    wire w_ab;

    assign w_ab = a & b;
    assign d = c & w_ab;

endmodule

