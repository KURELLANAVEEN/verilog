module half_adder_tb;
    reg A;               
    reg B;                
    wire Sum;             
    wire Carry;          

    half_adder UUT (
        .a(A),
        .b(B),
        .sum(Sum),
        .carry(Carry)
    );
 
    initial begin
        $monitor("Time = %0t : A = %b, B = %b -> Sum = %b, Carry = %b", 
                 $time, A, B, Sum, Carry);


        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
    initial begin
        $dumpfile("half_adder.vcd");
        $dumpvars(0, half_adder_tb);
    end
endmodule