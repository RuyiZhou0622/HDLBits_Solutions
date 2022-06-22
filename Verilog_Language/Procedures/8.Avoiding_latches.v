// synthesis verilog_input_version verilog_2001
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
    
    always @(*)begin
        {left,down,right,up} = 4'b0;
        case(scancode)
            16'he06b: {left,down,right,up} = 4'b1000;
            16'he072: {left,down,right,up} = 4'b0100;
            16'he074: {left,down,right,up} = 4'b0010;
            16'he075: {left,down,right,up} = 4'b0001;
            default: {left,down,right,up} = 4'b0;
        endcase
        
    end
endmodule
