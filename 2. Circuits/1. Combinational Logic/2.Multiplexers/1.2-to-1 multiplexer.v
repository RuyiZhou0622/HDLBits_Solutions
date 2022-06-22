module top_module( 
    input a, b, sel,
    output out ); 
	
    always@(*) begin
        case(sel) 
            1'b1: out = b;
            1'b0: out = a;
            default out = a;
        endcase
    end
    
endmodule

