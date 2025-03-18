module force_release_;
reg a, b, c, out_and_reg;
wire out_and_g;

and AND_gate (out_and_g, a, b, c);

initial begin
  $monitor("%d out_and_reg=%b, out_and_g=%b", $stime, out_and_reg, out_and_g);
  assign out_and_reg = (a & b & c);
  a = 1;
  b = 0;
  c = 1;
  #10;
  force out_and_g = (a | b | c);
  force out_and_reg = (a | b | c);
  #10;
  release out_and_g;
  release out_and_reg;
  #10 $finish;
end
endmodule