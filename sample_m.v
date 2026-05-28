`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2026 15:21:23
// Design Name: 
// Module Name: sample_m
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


module sample_m#(
parameter DATA_WIDTH=32)

(input clk,reset,
output reg [DATA_WIDTH-1:0] data,
output reg valid,ready );
    always@(posedge clk)
    begin
    
    if(reset)begin
    data<=0;
    valid<=0;
    end
    
    else 
    begin
    if(valid&&ready)begin
    data<=data+32'h1;
    valid<=1;
    end
    
    else if (!ready&&valid)begin
    data<=data;
    valid<=1'b1;
    end
    
    else if(!valid)begin
    data<=00;
    valid<=1'b1;
    end
    end
    end
    
    
    
endmodule
