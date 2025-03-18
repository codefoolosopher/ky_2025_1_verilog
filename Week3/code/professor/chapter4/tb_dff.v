module dff_tb;

    reg clock;
    reg d;
    reg reset;
    reg set;
    wire q;

    // D 플립플롭 모듈 인스턴스화
    dff_pca dut (.clock(clock), .d(d), .reset(reset), .set(set), .q(q));

    // 클락 신호 생성
    always #10 clock = ~clock;

    initial begin
        // 초기화
        clock = 0; d = 1;
        reset = 1; set = 1;
        #10;  // 10 타임 유닛 대기

        // 데이터 입력 테스트
        #10;    d = 1;
        #10;    d = 0;
        #40;  // 40 타임 유닛 대기

        // 셋 테스트
        set = 0;
        #10;
        set = 1;
        #45;
        d = 1;
        #40;

        // 리셋 테스트
        reset = 0;
        #20;
        reset = 1;
        #10;

        // 테스트 완료
        $finish;
    end

    initial begin
        $dumpfile("dff_tb.vcd");  // 파형 파일 출력
        $dumpvars(0, dff_tb);
        $monitor("Time=%0t | clock=%b | reset=%b | set=%b | d=%b | q=%b", $time, clock, reset, set, d, q);  // 신호 모니터링
    end
endmodule    