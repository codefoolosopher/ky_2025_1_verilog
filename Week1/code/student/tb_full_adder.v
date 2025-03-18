module tb_full_adder ();

	// 코드를 완성 하시오




    initial begin
        a=0; b=0; cin=0;
        #50 a=1; b=0; cin=0;
        #50 a=0; b=1; cin=0;
        #50 a=1; b=0; cin=0;
        #50 a=1; b=1; cin=0;
        #50 a=0; b=0; cin=1;
        #50 a=1; b=0; cin=1;
        #50 a=0; b=1; cin=1;
        #50 a=1; b=1; cin=1;
        #50 $stop;
    end

endmodule
