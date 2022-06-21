module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
   
    wire [15:0] sum1;
    wire [15:0] sum2;
    wire cout,cfinalout;
    
    add16 adder1 (a[15:0], b[15:0], 0, sum1, cout);
    add16 adder2 (a[31:16], b[31:16], cout, sum2, cfinalout);
    
    assign sum [31:0] = {sum2,sum1};
endmodule
