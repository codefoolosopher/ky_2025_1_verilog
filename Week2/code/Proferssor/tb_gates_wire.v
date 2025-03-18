`timescale 1ns / 1ps
module tb_gates_wire ();

    reg  a, b, c;
    wire d;

    // 테스트할 모듈 인스턴스화
    gates_wire dut (
        .a(a),
        .b(b),
        .c(c),
        .d(d)
    );

    initial begin
        // 초기화
        a = 0;  b = 0;  c = 0;
        #10;  // 10ns 대기
        // 테스트 벡터 1
        a = 0;  b = 0;  c = 1;
        #10;  // 10ns 대기
        // 테스트 벡터 2
        a = 0;  b = 1;  c = 1;
        #10;  // 10ns 대기
        // 테스트 벡터 3
        a = 1;  b = 0;  c = 1;
        #10;  // 10ns 대기
        // 테스트 벡터 4
        a = 1;  b = 1;  c = 1;
        #10;  // 10ns 대기
        // 테스트 벡터 5
        a = 1;  b = 1;  c = 0;
        #10;  // 10ns 대기
        // 시뮬레이션 종료
        $finish;
    end

    initial begin
        // 출력 모니터링
        $monitor("At time %t, a = %b, b = %b, c = %b, out = %b",
                 $time, a, b, c, d);
    end

endmodule

