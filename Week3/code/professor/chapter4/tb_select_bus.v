module tb_select_bus;
    parameter n = 16;
    reg [n:1] bus0;
    reg [n:1] bus1;
    reg [n:1] bus2;
    reg [n:1] bus3;
    reg enable;
    reg [1:0] sel;
    wire [n:1] bus_out;

    // DUT (Device Under Test) 인스턴스화
    select_bus #(n) uut (
        .bus0(bus0),
        .bus1(bus1),
        .bus2(bus2),
        .bus3(bus3),
        .enable(enable),
        .sel(sel),
        .bus_out(bus_out)
    );

    initial begin
        // 초기화
        bus0 = 16'hAAAA;
        bus1 = 16'hBBBB;
        bus2 = 16'hCCCC;
        bus3 = 16'hDDDD;
        enable = 0;
        sel = 2'b00;

        // 테스트 시퀀스
        #10 enable = 1; sel = 2'b00; // bus0 선택
        #10 sel = 2'b01;             // bus1 선택
        #10 sel = 2'b10;             // bus2 선택
        #10 sel = 2'b11;             // bus3 선택
        #10 enable = 0;              // enable 비활성화
        #10 $finish;                 // 시뮬레이션 종료
    end

    initial begin
        $monitor("At time %t, sel = %b, enable = %b, bus_out = %h", $time, sel, enable, bus_out);
    end
endmodule