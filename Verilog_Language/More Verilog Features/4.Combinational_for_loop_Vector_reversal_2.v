module top_module( 
    input [99:0] in,
    output [99:0] out
);
	integer index;
    
    always@(*)begin
        for (index = 0; index < 100; index = index + 1)begin
        out [index] = in [99-index];
        end
    end
    
endmodule
