module shift(
	input [7:0] A,
	input [3:0] n,
	input dir,
	output reg [7:0] Y); 
always(*) begin
	if (dir==0) begin
		Y=A>>n;end
	else begin
		Y=A<<n; end
	end;
	endmodule;
