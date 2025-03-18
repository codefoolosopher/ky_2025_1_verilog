module select_bus #(parameter n=16  )(
    input  [n:1] bus0,
    input  [n:1] bus1,
    input  [n:1] bus2,
    input  [n:1] bus3,
    input        enable,
    input  [1:0] sel,
    output tri [n:1] bus_out
);
    parameter zee = 16'bz;
    tri [n:1] data;     // net 선언

    // 연속할당을 같는 net 선언
    assign bus_out = enable ? data : zee;
    //wire [n:1] bus_out = enable ? data : zee;

    // 하나의 assign문으로 4개의 연속 할당을 표현
    
    assign
        data = (sel == 0) ? bus0 : zee,
        data = (sel == 1) ? bus1 : zee,
        data = (sel == 2) ? bus2 : zee,
        data = (sel == 3) ? bus3 : zee ;
/*
    // 4개의 assign 문을 이용한 표현
    assign data = (sel==0) ? bus0 : zee;
    assign data = (sel==1) ? bus1 : zee;
    assign data = (sel==2) ? bus2 : zee;
    assign data = (sel==3) ? bus3 : zee;
*/
endmodule
