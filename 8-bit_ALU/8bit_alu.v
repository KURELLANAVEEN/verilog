module alu_8bit(a,b,sel,res);
    input [7:0] a, b;
    input [2:0] sel;
    output [15:0] res;

    parameter   ADD = 3'b000, 
                SUB = 3'b001,
                MUL = 3'b010,
                DIV = 3'b011,
                AND = 3'b100,
                OR  = 3'b101,
                NEG = 3'b110,
                XOR = 3'b111;
    
    reg [15:0] out;

    always @(*) begin
        case(sel)
            ADD : out = a + b;
            SUB : out = a - b;
            MUL : out = a * b;
            DIV : begin
                if(b!=0) out = a / b;
                else out = 16'h0000;
            end
            AND : out = a & b;
            OR  : out = a | b;
            NEG : out = ~a;
            XOR : out = a ^ b;
        endcase
    end
    assign res = out;


endmodule