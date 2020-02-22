`timescale 1ns / 1ps
module LOGIC2TEST;

reg a,b;
wire andout;
wire orout;

LOGIC2 bbb(a,b,andout,orout);

initial begin
  $dumpfile("logic2test.vcd");
  $dumpvars(0, LOGIC2TEST);
  $monitor("%t: a = %b, b = %b, out = %b", $time, a, b, andout, orout);

  a = 0;
  b = 0;
#10 a = 1;
#10 a = 0; b = 1;
#10 a = 1;
#10 a = 0; b = 0;
  #10  $finish;
 end
 endmodule
