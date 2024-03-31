module switch_tb();

reg in0, in1, sel;
wire out0, out1;

switch uut(.in0(in0), .in1(in1), .sel(sel), .out0(out0), .out1(out1));
initial begin
	$dumpfile("switch.vcd");
	$dumpvars(0,switch_tb);
	$monitor("in0=%b, in1=%b, sel=%b, out0=%b, out1=%b\n", in0, in1, sel, out0, out1);
	#20;
	in0=0;
	in1=0;
	sel=0;
	#20;
	in0=1;
	#20;
	in1=1;
	#20
	sel=1;
	#20
	in0=0;
	#20 
	in1=0;
	$finish;
end
endmodule
