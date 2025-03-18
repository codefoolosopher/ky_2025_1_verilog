`timescale 1ns / 1ps
module tb_concat ();

    reg  [1:0] a, b, c;
    wire [5:0] d, e;
    wire [7:0] f;

    // 테스트할 모듈 인스턴스화
    concat_ex dut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f)
    );

    initial begin
        // 초기화
        a = 0;  b = 0;  c = 2'b01;
        #10;  // 10ns 대기
        a = 2'b01;  b = 2'b11;  c = 2'b10;
        #10;  // 10ns 대기
        a = 2'b10;  b = 2'b10;  c = 2'b11;
        #10;  // 10ns 대기
        a = 2'b11;  b = 2'b01;  c = 2'b00;
        #10;  // 10ns 대기
        // 시뮬레이션 종료
       $stop;
    end

    initial begin
        // 출력 모니터링
        $monitor("At time %t, a = %b, b = %b, c = %b,\n d = %b, e = %b, f = %b",
                 $time, a, b, c, d, e, f);
    end

endmodule

