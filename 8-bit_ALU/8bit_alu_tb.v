module alu_8bit_tb;
    reg [7:0] A, B;
    reg [2:0] SEL;
    wire [15:0] RES;

    alu_8bit UUT(.a(A), .b(B), .sel(SEL), .res(RES));
    parameter   ADD = 3'b000, 
                SUB = 3'b001,
                MUL = 3'b010,
                DIV = 3'b011,
                AND = 3'b100,
                OR  = 3'b101,
                NEG = 3'b110,
                XOR = 3'b111;

    initial begin
        $monitor("A=%b, B=%b, SEL=%b, RES=%b",A, B, SEL, RES);
        A=2; B=3; SEL=ADD; #10;
        A=3; B=2; SEL=SUB; #10;
        A=2; B=3; SEL=MUL; #10;
        A=2; B=3; SEL=DIV; #10;
        A=3; B=0; SEL=DIV; #10;
        A=2; B=3; SEL=AND; #10;
        A=2; B=3; SEL= OR;  #10;
        A=2; B=3; SEL=NEG; #10;
        A=2; B=3; SEL=XOR; #10;
        $finish;
    end
    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, alu_8bit_tb);
    end

endmodule