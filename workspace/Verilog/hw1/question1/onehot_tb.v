`timescale 1ns/1ns

module onehot_tb;
input [3:0] A;
output reg [1:0] B;

onehot uut(A,B);

initial begin
	$dumpfile("one-hot_tb.vcd");
	$dumpvars(0, one-hot_tb);
	A=0000;
	#20;
	A=0001;
	#20
	A=0010;
	#20
	A=0011;
	#20
	A=0100;
	#20
	A=1000;
	#20
	A=1111;
	#20
	$display("Test Complete");
end 
endmodule
