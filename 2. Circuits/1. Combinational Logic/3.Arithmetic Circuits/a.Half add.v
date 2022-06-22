module top_module( 
    input a, b,
    output cout, sum );

    assign {sum,cout} ={a^b , a&b}; 
    
endmodule

