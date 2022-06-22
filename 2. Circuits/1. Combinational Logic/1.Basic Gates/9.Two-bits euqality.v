module top_module ( input [1:0] A, input [1:0] B, output z ); 

    always@(*) begin
    	if(A[0] == B[0]) begin
            if(A[1] == B[1]) begin
                z = 1;
            end else begin
                z = 0;
            end
    	end
        else begin 
            z = 0;
        end
    end
endmodule
