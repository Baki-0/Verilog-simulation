`timescale 1ns / 1ps
module halfaddertest;

reg a;
reg b;
wire sum;
wire carry;

halfadder test(a,b,sum,carry);

initial begin
    $dumpfile("halfaddertest.vcd");
    $dumpvars(0, halfaddertest);
    $monitor("%t: a = %b, b = %b, out = %b", $time, a, b, sum, carry);
    
    a = 0;  b = 0;
    #10 a = 1;
    #10 a = 0;  b = 1;
    #10 a = 1; 
    #10 $finish;
end
endmodule

