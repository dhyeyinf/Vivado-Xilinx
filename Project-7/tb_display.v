module testbench_display_adder;
    reg [3:0] A, B;
    wire [3:0] sum;
    wire Cout;
    wire [4:0] decimal;
    wire [3:0] d_tens, d_ones;
    wire [6:0] seg_tens, seg_ones;
    
    four_bit_adder FoutBAdder(A, B, sum, Cout);
    BinaryToDecimal BtoD({Cout,sum}, decimal, d_tens, d_ones);
    disp_add add4bit_display(d_tens, d_ones, seg_tens, seg_ones);
    
    initial begin
        
        // 3 + 5 = 8
        A = 4'b0011;
        B = 4'b0101;
        #20;
        
        // 12 + 10 = 22
        A = 4'b1100;
        B = 4'b1010;
        #20;
        
        // 7 +9 = 16
        A = 4'b0111;
        B = 4'b1001;
        #20;
        
        // 15 + 3 = 18
        A = 4'b1111;
        B = 4'b0011;
        #20;
        
        // 8 + 7 = 15
        A = 4'b1000;
        B = 4'b0111;
        #20;
        
        // 15 + 15 = 30
        A = 4'b1111;
        B = 4'b1111;
        #20;
        
        $finish;
    end    
    
endmodule