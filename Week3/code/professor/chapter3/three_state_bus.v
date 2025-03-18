// 코드
module three_state_bus (
    input         snd_en,
    input         rcv_en,
    input  [31:0] out_data,
    output [31:0] in_data,
    inout  [31:0] data_bus
);

    // 게이트 프리미티브를 이용한 모델링 in_data 할형형
    // 32비트 3상태 버퍼 게이트 프리미티브 모델링
    // 3상태 버퍼 배열형 bufif1 (out, in, control)
    bufif1 buf_array [31:0] (data_bus, data_out, snd_en);

    // 게이트 프리미티브를 이용한 모델링 out_data 할당
    // ??
    bufif1 buf_arry1 [31:0] (data_in, data_bus, rcv_en);
endmodule
