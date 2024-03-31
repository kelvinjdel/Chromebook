module onehot(
	input [3:0] A,
	output reg [1:0] B);
always@(*) begin
	if (A[3]==1) begin
		B=2'b11; end
	else if (A[2]==1) begin
		B=2'b10; end
	else if (A[1]==1) begin
		B=2'b01; end
	else begin
		B=2'b00; end
	//if Least significant bit is 0 or 1, Y='00'
	end
	endmodule
	
