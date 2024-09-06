module practice;
    integer pi = 3;
    real area;
    integer i;
    reg clk;

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    always @(posedge clk) begin
        if(i<3) begin
            area = pi * i * i;
            $display("Area with radius %d is %d", i, area);
            i = i+1;
        end
        else $finish;
        
    end
    initial begin
        i = 0;
    end
    
    

endmodule