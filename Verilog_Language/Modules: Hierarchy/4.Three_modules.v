module top_module ( input clk, input d, output q );
    wire a,b;
    my_dff aaa (.clk(clk), .d(d), .q(a));
    my_dff bbb (.clk(clk), .d(a), .q(b));
    my_dff ccc (.clk(clk), .d(b), .q(q));
endmodule
