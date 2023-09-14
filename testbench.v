// Testbench
module test;

  reg clk;
  reg reset;
  reg [31:0] a,b;
  wire [63:0] result;
  reg ae;

  macc_417 macc_unit(.clk(clk), .rst(reset), .a(a), .b(b), .accumulate_enable(ae), .result(result));

  initial begin
    // Dump waves
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $display("Reset flop.");
    clk = 0;
    ae = 0;
    a = 0;
    b = 0;
    reset = 1;
    #3
    reset = 0;
    #20
    reset = 1;
    ae = 1;
    #3
    reset = 0;
  end
  
  always begin
    clk = ~clk;
    #2;
  end
  
  always@(posedge clk)
  begin
    a = a+1;
    b = b+3;
  end
  


endmodule