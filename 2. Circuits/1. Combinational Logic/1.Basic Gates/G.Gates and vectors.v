module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );

    generate 
        genvar i;
        for(i=0; i<3; i++) begin:block_1
          assign out_both[i] = in[i] & in[i+1];
        end
    endgenerate
    
    generate 
        genvar j;
        for(j=3; j>0; j--) begin:block_2 
          assign out_any[j] = in[j] | in[j-1];
        end
    endgenerate
    
    generate 
        genvar k;
        for(k=0; k<=3; k++) begin:block_3 
            if(k<3)begin
            	assign out_different[k] = in[k] ^ in[k+1];
            end else begin
                assign out_different[k] = in[k] ^ in[0];
            end
        end
    endgenerate
    
endmodule
