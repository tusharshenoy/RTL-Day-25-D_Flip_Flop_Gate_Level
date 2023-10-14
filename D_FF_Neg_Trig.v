//Verilog Code for Negative Edge Triggered D Flip-Flop
module D_FF_Neg_Trig(D,clk,Q,Qb);

input D,clk;
output Q,Qb;

wire [1:0]w;
wire nclk,Sb,Rb;

not N(nclk,clk);

nand N1(w[1],w[0],Sb);
nand N2(Sb,w[1],nclk);

nand N3(Rb,Sb,nclk,w[0]);
nand N4(w[0],Rb,D);

nand N5(Q,Sb,Qb);
nand N6(Qb,Rb,Q);

endmodule
