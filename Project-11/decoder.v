`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 01:29:07
// Design Name: 
// Module Name: decoder_2x4
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


module decoder_2x4_enable(
    input [1:0] I,
    input enable,
    output reg [3:0] Y 
);

always @* begin
    if (enable) begin
        case (I)
        2'b00: Y = 4'b0001;
        2'b01: Y = 4'b0010;
        2'b10: Y = 4'b0100;
        2'b11: Y = 4'b1000;
        default: Y = 4'b0000;
        endcase
    end else begin
        Y = 4'b0000;
    end
end   
endmodule

module decoder_4x16_enable(input A,B,C,D, output [15:0] O);

wire [3:0] Y_enable, Y1, Y2, Y3, Y4;

decoder_2x4_enable d_enable({A, B}, 1, Y_enable);
decoder_2x4_enable d1({C, D}, Y_enable[0], Y1);
decoder_2x4_enable d2({C, D}, Y_enable[1], Y2);
decoder_2x4_enable d3({C, D}, Y_enable[2], Y3);
decoder_2x4_enable d4({C, D}, Y_enable[3], Y4);

assign O = {Y4, Y3, Y2, Y1};

endmodule