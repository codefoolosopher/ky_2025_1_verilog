
module tb_three_state_bus;

    // 테스트 벤치 신호
    reg snd_en;
    reg rcv_en;
    reg [31:0] out_data;
    wire [31:0] in_data;
    wire [31:0] data_bus;   // data_out to data_bus 출력

    // DUT (Device Under Test) 인스턴스화
    three_state_bus dut (
        .snd_en(snd_en),
        .rcv_en(rcv_en),
        .out_data(out_data),
        .in_data(in_data),
        .data_bus(data_bus)
    );

    // 데이터 버스 드라이버
    // data bus to in_data로 시뮬레이션을 위해
    // 필요한 reg 자료형.
    reg [31:0] data_bus_driver;
    //assign data_bus = (rcv_en) ? data_bus_driver : 32'hZZZZZZZZ;
    bufif1 buf_arry2 [31:0](data_bus, data_bus_driver, rcv_en);

    initial begin
        // 초기화
        snd_en = 0;
        rcv_en = 0;
        out_data = 32'h00000000;
        data_bus_driver = 32'h00000000;

        // 테스트 시퀀스
        #10 snd_en = 1; out_data = 32'hA5A5A5A5; // 데이터 전송
        #10 snd_en = 0;
        #10 rcv_en = 1; data_bus_driver = 32'h5A5A5A5A; // 데이터 수신
        #10 rcv_en = 0;

        // 추가 테스트 케이스
        #10 snd_en = 1; out_data = 32'h12345678;
        #10 snd_en = 0;
        #10 rcv_en = 1; data_bus_driver = 32'h87654321;
        #10 rcv_en = 0;

        // 시뮬레이션 종료
        #10 $finish;
    end

    initial begin
        $monitor("Time = %0t, snd_en = %b, rcv_en = %b, out_data = %h, in_data = %h, data_bus = %h", 
                 $time, snd_en, rcv_en, out_data, in_data, data_bus);
    end

endmodule