module top_module (input x, input y, output z);
	wire z1,z2,z3,z4,or_1,and_1;
    q4a ia1 (.x(x), .y(y), .z(z1));
    q4b ib1 (.x(x), .y(y), .z(z2));
    
    q4a ia2 (.x(x), .y(y), .z(z3));
    q4b ib2 (.x(x), .y(y), .z(z4));
    
    assign or_1 = z1 | z2;
    assign and_1 = z3 & z4;
    assign z = or_1 ^ and_1;
    
endmodule

module q4a (input x, input y, output z);
    assign z = (x^y)&x;
endmodule

module q4b(input x,input y,output z);
	assign z = ~(x^y);
endmodule
