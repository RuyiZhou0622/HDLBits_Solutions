module top_module (
    input in1,
    input in2,
    input in3,
    output out);

    wire not_xor;
    
    assign not_xor = ~(in1 ^ in2);
    assign out = not_xor ^ in3;
    
endmodule
