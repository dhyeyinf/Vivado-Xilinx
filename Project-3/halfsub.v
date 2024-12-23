`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 00:37:29
// Design Name: 
// Module Name: halfsub
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// Half Subtractor
module half_subtractor(a, b, diff, borrow);
input a, b;
output diff, borrow;
assign diff = a^b;
assign borrow = (~a) & b;
endmodule
// Testbench
module testbench;
reg test_a, test_b;
wire test_diff, test_borrow;
half_subtractor HA1(.a(test_a), .b(test_b), .diff(test_diff), .borrow(test_borrow));
initial begin
test_a = 0; test_b = 0; #10
test_a = 0; test_b = 1; #10
test_a = 1; test_b = 0; #10
test_a = 1; test_b = 1; #10
$finish();
end
endmodule
