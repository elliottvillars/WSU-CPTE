`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/21/2018 08:58:34 PM
// Design Name: 
// Module Name: latch
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

`timescale 1ns/1ps
module latch (
    input [3:0] I,
    input [1:0] S,
    output reg [3:0] O
);

always @ (I, S)
    case (S)
    2'b00:
        O = {O[3:1], I[0]};
    2'b01:
        O = {O[3], O[2], I[1], O[0]};
    2'b10:
        O = {O[3], I[2], O[1], O[0]};
    2'b11:
        O = {I[3], O[2:0]};
    default:
        O = O;
    endcase
endmodule

