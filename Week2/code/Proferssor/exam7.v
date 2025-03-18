`timescale 1ns/10ps
module exam7 (
    input        a,
    input        b,
    input        c,
    input        d,
    output [1:0] y
);
  wire w1, w2;

  assign w1 = a | b;
  assign w2 = b & c;
  assign y[0] = ~(w2 & d);
  assign y[1] = ~(w1 ^ w2);

endmodule
