`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 09:25:52
// Design Name: 
// Module Name: sampl_tb
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


module sampl_tb #(parameter DATA_WIDTH=32)();
reg clk,rst;
wire valid,ready;
wire [DATA_WIDTH-1:0] data;

sample_m #(DATA_WIDTH) master (clk,rst,data,valid,ready);
sample_s #(DATA_WIDTH) slave(data,valid,clk,rst,ready);

always #5 clk=~clk;

initial begin
rst=1;
clk=0;
#10;
rst=0;
#200 $finish;
end

endmodule
