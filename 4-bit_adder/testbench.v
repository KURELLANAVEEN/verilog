module ripple_carry_adder_tb;

    reg [3:0] A, B;
    reg C_IN;
    wire [3:0] SUM;
    wire C_OUT;

    ripple_carry_adder UUT(.a(A), .b(B), .c_in(C_IN),
        .sum(SUM), .c_out(C_OUT));
    
    initial begin
        $monitor("Time = %0t : A=%b, B=%b, C_IN=%b, SUM=%b, C_OUT=%b", $time, A, B, C_IN, SUM, C_OUT);
        A = 4'b0001; B = 4'b0010; C_IN = 1'b0; #10;  
        A = 4'd3; B = 4'd4; #10;
        A = 4'b1010; B = 4'b0111; #10; 
        A = 4'b1111; B = 4'b1111; #10; 
        A = 2; B = 5; #10;
        $finish;
    end

    initial begin
        $dumpfile("ripple_adder.vcd");
        $dumpvars(0, ripple_carry_adder_tb);
    end
endmodule