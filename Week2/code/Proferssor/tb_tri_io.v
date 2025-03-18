// Code your testbench here
// or browse Examples
module tb;
  reg [7:0] in;
  reg en;
  wire [7:0] out;
  
  tristate_buff dut_tribuff(in, en, out);
  
  initial begin
    $monitor("en = %h: in = %h --> out = %h", en, in, out);
      en = 0; in = 0;
      #10;
      en = 1; in = 8'h01;
      #10;  
      en = 1; in = 8'haa;
      #10;  
      en = 1; in = 8'h11;
      #10;  
      en = 1; in = 8'h55;
      #10;  
      en = 0; in = 8'h11;
      #10;  
    end
endmodule