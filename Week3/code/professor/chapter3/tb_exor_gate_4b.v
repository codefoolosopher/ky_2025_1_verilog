module tb_exor_gate_4b;

    // 테스트 벤치에서 사용할 신호 선언
    reg [3:0] a;
    reg [3:0] b;
    wire [3:0] y;

    // 테스트할 모듈 인스턴스화
    exor_gate_4b uut (
        .a(a),
        .b(b),
        .y(y)
    );

    // 테스트 벤치 초기화 및 테스트 시퀀스
    initial begin
        // 초기 값 설정
        a = 4'b0000;
        b = 4'b0000;

        // 테스트 케이스 1
        #10 a = 4'b1010; b = 4'b0101;
        #10 a = 4'b1111; b = 4'b0000;
        #10 a = 4'b1100; b = 4'b0011;
        #10 a = 4'b1001; b = 4'b0110;

        // 테스트 종료
        #10 $finish;
    end

    // 출력 모니터링
    initial begin
        $monitor("At time %t, a = %b, b = %b, y = %b", $time, a, b, y);
    end

endmodule