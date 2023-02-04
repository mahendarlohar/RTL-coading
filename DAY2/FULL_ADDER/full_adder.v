`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2023 10:38:55
// Design Name: 
// Module Name: top
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



module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    
   
    
    assign sum = a^b^cin;
    assign cout = (a&b)|(b&cin)|(a&cin);
    
 
    
    
endmodule
