module oneBit_full_adder(a,b,c,sum,carry);

    input wire a, b, c;
    output wire sum, carry;

    wire w1, w2, w3;

    half_adder HA1(.a(a),.b(b),.sum(w1),.carry(w2));
    half_adder HA2(.a(w1),.b(c),.sum(sum),.carry(w3));

    or OR(carry, w2, w3);

endmodule 

module half_adder(a,b,sum,carry);
    input a, b;
    output sum, carry;
    assign sum = a^b;
    assign carry = a&b;
endmodule