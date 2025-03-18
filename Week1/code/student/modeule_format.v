// module
module module_name ( input in, output out);  // 

  wire w_wire0;
  reg  r_reg0;

  assign out = in;

  always @( in )
  begin
    case 0: out = w_wire0;
  end
endmodule


