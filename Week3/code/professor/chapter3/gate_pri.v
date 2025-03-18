`timescale 1ns / 1ps

module gate_pri(
    input a, b, c, d, e,
    output y0, y1
);
    wire or_out, and1_out ;
    
    // 3input OR 게이트: a OR b or c
    or  (or_out, a, b,c);
    
    // AND 게이트 1: c AND d
    and (and1_out, c , d);
    
    // EXNOR 게이트: (or_out exnor and1_out)
    xnor (y1 , or_out, and1_out);

    // AND 게이트 2: d AND e
    nand (y0, and1_out, d , e);
    
endmodule
