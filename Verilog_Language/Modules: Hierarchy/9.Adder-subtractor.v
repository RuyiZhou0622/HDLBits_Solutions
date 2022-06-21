module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] awire;
    wire cout,cout2;
    
    always @(*) begin
        case(sub)
            1'b0: awire =b;
            1'b1: awire =~b;
        endcase
    end
    
    add16 adder1 (a[15:0], awire[15:0], sub, sum[15:0], cout);
    add16 adder2 (a[31:16], awire[31:16], cout, sum[31:16], cout2);
    
endmodule
