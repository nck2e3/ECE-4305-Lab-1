`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2024 02:19:23 PM
// Design Name: 
// Module Name: multi_barrel_shifter_mux
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


module multi_barrel_shifter_mux
    #(parameter width = 2)
    (
        input logic [width - 1:0] select,
        input logic [width ** 2 - 1:0] shift,
        input logic [width ** 2 - 1:0] input_string,
        input logic [width ** 2 - 1:0] output_string
    );
endmodule
