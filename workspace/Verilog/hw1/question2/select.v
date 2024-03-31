module select(
	input [3:0] a0,
	input [3:0] a1,
	input [3:0] a2,
	input [1:0] sel,
	output reg [3:0] Y);
always (*) begin
	if (sel==00)begin
		Y=a0; end
	else if (sel==01)begin
		Y=a1; end
	else if (sel==10) begin
		Y=a2; end
	else begin
		Y=4b'0000; end
	end;
	endmodule;
	
