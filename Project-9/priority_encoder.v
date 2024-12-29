`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 16:45:13
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder (input [3:0] I, output reg [1:0] Y, output reg V); 
always @(I)
begin

    casex (I)

        4'b0000: {Y, V} = 3'bxx0;

        4'b1000: {Y, V} = 3'b001;

        4'bx100: {Y, V} = 3'b011;

        4'bxx10: {Y, V} = 3'b101;

        4'bxxx1: {Y, V} = 3'b111;



    endcase

end

endmodule