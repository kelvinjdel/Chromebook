module switch4(
    input in0,in1,in2,in3,sel0,sel1,
    output out0, out1,out2,out3);

wire A, B, C, D;
switch switch0 (.in0(in0), .in0(in2), .sel(sel0), .out0(A), .out1(B));
switch switch1 (.in0(in1), .in1(in3), .sel(sel0), .out0(C), .out1(D));
switch switch2 (.in0(A), .in1(C), .sel(sel1), .out0(out0), .out1(out1));
switch switch3 (.in0(B), .in1(D), .sel(sel1), .out0(out2), .out3(out3));
endmodule