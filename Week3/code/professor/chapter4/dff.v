module dff_pca (
    input  clock,
    input  d,
    input  reset,
    input  set,
    output q
);

    reg q;

    always @(reset or set)
        if (!reset) 
            assign q = 0;
        else if (!set) 
            assign q = 1;
        else 
            deassign q;

    always @(posedge clock) q = d;

endmodule
