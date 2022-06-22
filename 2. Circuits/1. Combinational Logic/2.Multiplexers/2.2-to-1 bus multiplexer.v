module top_module( 
    input [99:0] a, b,
    input sel,
    output [99:0] out );

    always@(*) begin
        case (sel)
            1'b0: out = a;
            1'b1: out = b;
        	default out = a;
        endcase
    end
endmodule
