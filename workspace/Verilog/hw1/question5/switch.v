module switch(
	input in0,
	input in1,
	input sel,
	output out0,
	output out1);
assign out0= sel? in1:in0;
assign out1= sel? in0:in1;
endmodule
