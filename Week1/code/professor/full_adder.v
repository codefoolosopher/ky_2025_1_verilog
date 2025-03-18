module full_adder (
    input  a,
    input  b,
    input  cin,
    output sum,
    output cout
);
    wire w1, w2, w3;

    half_adder  U1(.a(a), .b(b), .sum(w1), .cout(w2));
    half_adder  U2(.a(w1), .b(cin), .sum(sum), .cout(w3) );
    or          U3(cout, w2, w3);   // gate primitive or를 인스턴스화함

endmodule
