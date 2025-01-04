module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] d1,d2,d3;
    my_dff8 d1(clk,d,d1);
    my_dff8 d2(clk,d1,d2);
    my_dff8 d3(clk,d2,d3);
    always@(*)
        begin
            case(sel)
                2'b00:q=d;
                2'b01:q=d1;
                2'b10:q=d2;
                2'b11:q=d3;
            endcase
 	end
    //assign out = sel[1] ? (sel[0] ? d3 : d2) : (sel[0] ? d1 : d);
endmodule
