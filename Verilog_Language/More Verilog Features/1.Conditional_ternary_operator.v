module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0] intermediate_1, intermediate_2;
     
    // assign intermediate_result1 = compare? true: false;
    assign intermediate_1 [7:0] = (a <= b) ? a : b;
    assign intermediate_2 [7:0] = (c <= intermediate_1) ? c : intermediate_1;
    assign min [7:0] = ( d <= intermediate_2) ? d : intermediate_2;
    
endmodule
