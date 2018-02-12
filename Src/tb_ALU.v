module tb_alu ();
wire [7:0] tc;
reg [7:0] ta,tb;
wire tborrow,tcarry,tequal,tless,tgreater;
reg [2:0] tchoice;
alu t1 (tc,tborrow,tcarry,tequal,tless,tgreater,ta,tb,tchoice);
always
begin
ta= $random;
tb= $random;
tchoice= $random;
#10;
end
endmodule
