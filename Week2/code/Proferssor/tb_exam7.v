`timescale 1ns / 10ps
module tb_exam7 ();

    reg  a, b, c, d;
    wire [1:0] y;

    // 테스트할 모듈 인스턴스화
    exam7 dut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .y(y)
    );

    initial begin
        // 초기화
        a = 0;  b = 0;  c = 0; d = 0;
        #10;  // 10ns 대기
        a = 0;  b = 0;  c = 0; d = 1;
        #10;  // 10ns 대기
        a = 0;  b = 1;  c = 1; d = 0;
        #10;  // 10ns 대기
        a = 1;  b = 0;  c = 1; d = 0;
        #10;  // 10ns 대기
        a = 1;  b = 1;  c = 1; d = 1;
        #10;  // 10ns 대기
        a = 1;  b = 1;  c = 0; d = 1;
        #10;  // 10ns 대기
        // 시뮬레이션 종료
        $stop;
    end

    initial begin
        // 출력 모니터링
        $monitor("At time %t, a = %b, b = %b, c = %b, out = %b",
                 $time, a, b, c, d);
    end

endmodule

