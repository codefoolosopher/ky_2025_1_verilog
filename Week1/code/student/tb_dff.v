// tb_dff.v

module tb_D_ff();
	// 코드를 완성 하시오





    // Stimulus generation
    initial begin
        // Initialize inputs
        din = 0;  reset = 1;
        // Release reset
        #10;    reset = 0;
        // Apply test vectors
        #10;    din = 1;
        #10;    din = 0;
        #10;    din = 1;
        #10;    din = 1;
        #10;    din = 0;
        #10;    din = 0;
        // Apply reset
        #10;    reset = 1;
        #10;    reset = 0;
        #50;
        // Finish simulation
        $stop;
    end
endmodule

