// exam_dff.v

module dff(  input clk, 
              input din, 
              input rst, 
              output reg q );

//  reg q;
  
  always @(posedge clk or posedge rst) begin
    if (rst == 1)
        q <= 1'b0;
    else
        q <= din;
  end

endmodule
