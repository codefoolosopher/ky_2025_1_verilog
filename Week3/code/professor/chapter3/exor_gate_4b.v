module exor_gate_4b (
    input  [3:0] a,
    input  [3:0] b,
    output [3:0] y
);

    // gate instance_name [size] (out, in0, in1); 
    // exor gate 배열
    xor U0 [3:0] (y,a,b);

endmodule
