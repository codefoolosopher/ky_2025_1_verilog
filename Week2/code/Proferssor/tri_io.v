
/*
module tri_state_bus (
    input  [7:0] data_bus,
    input        send_en,  // 선택 신호
    output [7:0] ioa
);
    // send_data가 1이면 data_bus 출력, 그렇지 않으면 고임피던스
    assign ioa = ( ( send_en == 1'b1) ? data_bus : 8'hzz );

endmodule
*/

// Code your design here
module tristate_buff(
  input [7:0] in,
  input en,
  output [7:0] out);
  
  assign out = en ? in : 8'hzz;
endmodule
  