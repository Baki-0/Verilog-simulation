module SRFF(
    S, R, Q, nQ
);

input S, R;
output Q, nQ;

//always@(posedge clk) begin
    nor (nQ, R, Q);
    nor (Q, S, nQ);
//end
endmodule