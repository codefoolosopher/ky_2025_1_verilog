`timescale 1ns / 1ps

module gate_pri_tb;
    // Inputs
    reg a;
    reg b;
    reg c;
    reg d;
    reg e;

    // Outputs
    wire y0;
    wire y1;

    // Design Under Test (DUT)
    gate_pri uut (
        .a(a), 
        .b(b), 
        .c(c), 
        .d(d), 
        .e(e), 
        .y0(y0), 
        .y1(y1)
    );

    initial begin
        // Initialize Inputs
        a = 0; b = 0; c = 0; d = 0; e = 0;
        #10; // Wait for 10 ns
        
        // Apply test vectors
        a = 1; b = 0; c = 0; d = 0; e = 0;
        #10;
        a = 0; b = 1; c = 0; d = 0; e = 0;
        #10;
        a = 0; b = 0; c = 1; d = 0; e = 0;
        #10;
        a = 0; b = 0; c = 0; d = 1; e = 0;
        #10;
        a = 0; b = 0; c = 0; d = 0; e = 1;
        #10;
        a = 1; b = 1; c = 1; d = 1; e = 1;
        #10;

        // Add more test cases as needed
    end

    initial begin
        $monitor("At time %t: a = %b, b = %b, c = %b, d = %b, e = %b -> y0 = %b, y1 = %b", 
                 $time, a, b, c, d, e, y0, y1);
    end

endmodule