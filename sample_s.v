`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2026 09:16:03
// Design Name: 
// Module Name: sample_s
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


module sample_s#(
parameter DATA_WIDTH=32)(
input [DATA_WIDTH-1:0] data,
input valid,clk,rst,
output reg ready);
    always@(posedge clk)begin
        if(rst)begin

            ready<=0;

        end else begin

                ready<=($urandom_range(0,100)>30)?1'b1:1'b0;
        end
        
                if(ready&&valid)begin
                $display("the slave receive the data :%0d and time=%0t",data,$time);
    end
end



endmodule
