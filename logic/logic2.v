module LOGIC2(A,B,X,Y);

input A,B;
output X,Y;

  and ANDTEST(X,A,B);
  or ORTEST(Y,A,B);

endmodule
