`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/05 20:28:25
// Design Name: 
// Module Name: lineBuffer
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


module lineBuffer(
input   i_clk,
input   i_rst,
input [7:0] i_data,
input   i_data_valid,
output [23:0] o_data,
input i_rd_data
);

reg [7:0] line [1919:0]; //line buffer	need to change if resolution is changed
reg [10:0] wrPntr;		//2^11=2048		need to change if resolution is changed
reg [10:0] rdPntr;		//2^11=2048		need to change if resolution is changed

always @(posedge i_clk)
begin
    if(i_data_valid)
        line[wrPntr] <= i_data;
end

always @(posedge i_clk)
begin
    if(i_rst || wrPntr == 1919)
        wrPntr <= 'd0;
    else if(i_data_valid)
        wrPntr <= wrPntr + 'd1;
end

assign o_data = {line[rdPntr],line[rdPntr+1],line[rdPntr+2]};

always @(posedge i_clk)
begin
    if(i_rst || rdPntr == 1919)
        rdPntr <= 'd0;
    else if(i_rd_data )
        rdPntr <= rdPntr + 'd1;
end

endmodule
