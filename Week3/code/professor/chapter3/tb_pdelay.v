module tb_xor_gate_2input;
    // 테스트 벤치에서 사용할 신호 선언
    reg a;
    reg b;
    wire y0;
    wire y1;

    // 테스트할 모듈 인스턴스화
    // 상승 전달 지연과 하강 전달 지연을 각각 3으로 설정
    xor #(3,3) U0 (y0, a , b);
    nand#(2,4) U1 (y1, a, b);

    // 테스트 벤치 초기화 및 테스트 시퀀스
    initial begin
        // 초기 값 설정
        a = 0;
        b = 0;
        // 테스트 케이스 1
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 a = 0; b = 0;
        // 테스트 종료
        #10 $finish;
    end
    // 출력 모니터링
    initial begin
        $monitor("At time %t, a = %b, b = %b, y0 = %b, y1 = %b", $time, a, b, y0, y1);
    end
endmodule
