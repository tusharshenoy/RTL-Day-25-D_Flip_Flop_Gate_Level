//Test bench Code for Negative Edge Triggered D Flip-Flop
module D_FF_Neg_Trig_tb();

reg D,clk;
wire Q,Qb;

D_FF_Neg_Trig dut(.D(D),.clk(clk),.Q(Q),.Qb(Qb));

initial begin
clk=1'b0;
   D=1'b0;
#8 D=1'b1;
#8 D=1'b0;
#8 D=1'b1;
#8 D=1'b0;
#8 D=1'b1;
#8 D=1'b0;
#16 $finish;
end

always #5 clk=~clk;
endmodule
