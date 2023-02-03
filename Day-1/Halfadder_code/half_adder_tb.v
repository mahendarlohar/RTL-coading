`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2023 14:00:15
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();

reg a1,b1;
wire sum1,cout1;

half_adder DUT(.a(a1),.b(b1),.sum(sum1),.cout(cout1));

initial begin   
a1=0; b1=0;
#10 a1=0; b1=1;
#10 a1=1; b1=0;
#10 a1=1; b1=1;
end

initial
begin
$monitor($time,"a1=%b,b1=%b,sum1=%b,cout1=%b",a1,b1,sum1,cout1);
end

initial #50 $finish;
endmodule
