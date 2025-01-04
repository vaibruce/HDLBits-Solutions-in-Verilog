module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    reg cin;
    wire [15:0] sum1,sum0;
    add16 a1 (a[15:0],b[15:0],1'b0,sum[15:0],cin);
    add16 a2 (a[31:16],b[31:16],1'b0, sum0[15:0]);
    add16 a3 (a[31:16],b[31:16],1'b1, sum1[15:0]);
    
    assign sum [31:16]=cin?sum1:sum0;
    
    
endmodule
