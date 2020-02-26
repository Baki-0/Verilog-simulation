`timescale 1ns / 1ps
module SRFFtest;

reg S, R;
wire Q, nQ;

SRFF test(S, R, Q, nQ);

initial begin
    $dumpfile("SRFFtest.vcd");
    $dumpvars(0, SRFFtest);
    $monitor("%t: S = %b, R = %b, Q = %b, nQ = %b", $time, S, R, Q, nQ);

    S = 0; R = 1 ;
    #10 S = 1;  R = 0;
    #10 R = 1;
    #10 S = 1;  R = 0;
    #10 S = 0;  R = 0;
    #10 $finish;
end
endmodule