`timescale 1ns / 1ps
module fulladdertest;

reg a;
reg b;
reg carry_in;
wire sum;
wire carry_out;

fulladder test(a, b, carry_in, sum, carry_out);

initial begin
    $dumpfile("fulladdertest.vcd");
    $dumpvars(0, fulladdertest);
    $monitor("%t: a = %b, b = %b, out = %b", $time, a, b, carry_in, sum, carry_out);

    a = 0;    b = 0;  carry_in = 0;
    #10 a = 1;
    #10 a = 0;  b = 1;
    #10 b = 0;  carry_in = 1;
    #10 a = 1;  b = 1;  carry_in = 0;
    #10 a = 0;  carry_in = 1;
    #10 a = 1;  b = 0;
    #10 b = 1;
    #10 $finish;
end
endmodule