// tb_dff.v

module tb_D_ff();
    reg  din;
    reg  clk;
    reg  reset;
    wire q;

    // Instantiate the D flip-flop module
    D_ff dut_dff (
        .clk(clk),
        .din(din),
        .rst(reset),
        .q(q)
    );

    // Clock generation
    initial begin
        clk = 1'b0;
        forever #10 clk = ~clk;  // Clock with a period of 10 time units
    end

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

