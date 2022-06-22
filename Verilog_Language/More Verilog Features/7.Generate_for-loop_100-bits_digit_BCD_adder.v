module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [99:0] temp_carry;
    
    bcd_fadd adder_1 (.a(a[3:0]),
                      .b(b[3:0]),
                      .cin(cin),
                      .cout(temp_carry[0]),
                      .sum(sum[3:0])
                     );
    
    generate
        genvar i;
        for(i=1; i<100; i++) begin: block
            bcd_fadd adder_2 (.a(a[4*i+3:4*i]),
                      		   .b(b[4*i+3:4*i]),
                              .cin(temp_carry[i-1]),
                              .cout(temp_carry[i]),
                               .sum(sum[4*i+3:4*i])
                     );
    
        end
    endgenerate

    assign cout = temp_carry[99];
    
endmodule
