module ripple_carry_adder(a, b, c_in, sum, c_out);
    input [3:0] a, b;
    input c_in;
    output [3:0] sum;
    output c_out;
    wire [2:0] carry;

    full_adder FA0(.a(a[0]), .b(b[0]), .c(c_in), 
        .sum(sum[0]), .cout(carry[0]));
    full_adder FA1(.a(a[1]), .b(b[1]), .c(carry[0]),
        .sum(sum[1]), .cout(carry[1]));
    full_adder FA2(.a(a[2]), .b(b[2]), .c(carry[1]),
        .sum(sum[2]), .cout(carry[2]));
    full_adder FA3(.a(a[3]), .b(b[3]), .c(carry[2]),
        .sum(sum[3]), .cout(c_out));

endmodule

module full_adder(input a, input b, input c, 
    output sum, output cout);
    assign sum = a^b^c;
    assign cout = (a&b) | (b&c) | (a&c);
endmodule
