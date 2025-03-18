module blocking_example;
    reg [3:0] a, b, c;

    initial begin
        a = 4'b0001;
        b = 4'b0010;
        c = 4'b0100;

        a = b; // a에 b의 값 할당 (a = 4'b0010)
        b = c; // b에 c의 값 할당 (b = 4'b0100)
        c = a; // c에 a의 값 할당 (c = 4'b0010)

        $display("Blocking: a = %b, b = %b, c = %b", a, b, c);
    end
endmodule
