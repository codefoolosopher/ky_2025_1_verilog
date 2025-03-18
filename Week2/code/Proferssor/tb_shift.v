module tb_shift_ex;

    reg [3:0] a;
    wire [3:0] b, c;

    // 테스트할 모듈 인스턴스화
    shift_ex dut (
        .a(a),
        .b(b),
        .c(c)
    );

    initial begin
        // 초기화
        a = 4'b0001;
        #10;  // 10ns 대기
        // 테스트 벡터 1
        a = 4'b0010;
        #10;  // 10ns 대기
        // 테스트 벡터 2
        a = 4'b0100;
        #10;  // 10ns 대기
        // 테스트 벡터 3
        a = 4'b1000;
        #10;  // 10ns 대기
        // 시뮬레이션 종료
        $finish;
    end

    initial begin
        // 출력 모니터링
        $monitor("At time %t, a = %4b, b = %4b, c = %4b "
                    , $time, a, b, c);
    end

endmodule

