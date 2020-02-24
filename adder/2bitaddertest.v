`timescale 1ns / 1ps
module adder_2bittest;

reg a0, a1, b0, b1;
wire s0, s1, c2;

adder_2bit test(a0, a1, b0, b1, s0, s1, c2);

initial begin
    $dumpfile("2bitaddertest.vcd");
    $dumpvars(0, adder_2bittest);
    $monitor("%t: a0 = %b, a1 = %b, b0 = %b, b1 = %b, s0 = %b, s1 = %b, c2 = %b",
    $time, a0, a1, b0, b1, s0, s1, c2);

    a0 = 0; a1 = 0; 
    b0 = 0; b1 = 0;
    #10 a0 = 1;                     //1000
    #10 a0 = 0; a1 = 1;             //0100 
    #10 a1 = 0; b0 = 1;             //0010
    #10 b0 = 0; b1 = 1;             //0001
    #10 b1 = 0; a0 = 1; a1 = 1;     //1100
    #10 a0 = 0; b0 = 1;             //0110
    #10 a1 = 0; b1 = 1;             //0011
    #10 b0 = 0; a0 = 1;             //1001
    #10 b1 = 0; a1 = 1; b0 = 1;     //1110
    #10 a0 = 0; b1 = 1;             //0111
    #10 a1 = 0; a0 = 1;             //1011
    #10 b0 = 0; a1 = 1;             //1101
    #10 b0 = 1;                     //1111
    #10 $finish;
end
endmodule