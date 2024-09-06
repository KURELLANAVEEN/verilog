module full_adder_tb;
    reg A, B, C;
    wire Sum, Carry;

    oneBit_full_adder UUT(
        .a(A),
        .b(B),
        .c(C),
        .sum(Sum),
        .carry(Carry)
    );

    initial begin
        $monitor("Time = %0t : A = %b, B = %b, C = %b -> Sum = %b, Carry = %b", 
                 $time, A, B, C, Sum, Carry);
        
        A = 0; B = 0; C = 0; #10;
        A = 0; B = 0; C = 1; #10;
        A = 0; B = 1; C = 0; #10;
        A = 0; B = 1; C = 1; #10;
        A = 1; B = 0; C = 0; #10;
        A = 1; B = 0; C = 1; #10;
        A = 1; B = 1; C = 0; #10;
        A = 1; B = 1; C = 1; #10;

        $finish;
    end
    initial begin
        $dumpfile("full_adder.vcd");
        $dumpvars(0, full_adder_tb);
    end

endmodule