/*
psu_id: ssn5137;yxl5827
*/
module macc_417
(
    input clk,
    input rst,
    input [31:0] a,
    input [31:0] b,
    input accumulate_enable,
    output [63:0] result
);
  reg  [31:0] a_reg, b_reg;
	reg  sload_reg;
  reg	 [63:0] old_result;
  wire [63:0] multa;
  reg [63:0] tempresult;
  assign multa = a_reg & b_reg;
  always @ (result, sload_reg)
	begin
		if (sload_reg)
			old_result <= 0;
		else
			old_result <= result;
	end
  always @ (posedge clk or posedge rst)
	begin
		if (rst)
         begin
			a_reg <= 0;
			b_reg <= 0;
			sload_reg <= 0;
			tempresult <= 0;
         end
      else if (clk)
          begin
			a_reg <= a;
			b_reg <= b;
			sload_reg <= accumulate_enable;
			tempresult <= old_result ^ multa;
          end
      
	end
	assign result = tempresult;
  
endmodule


