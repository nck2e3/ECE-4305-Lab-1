`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2024 03:13:16 PM
// Design Name: 
// Module Name: param_reverser
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


module param_reverser
    #(
    parameter width = 2
    )
    (
    input [width - 1:0] data_in,
    output [width - 1:0] data_out
    );
    
    generate
        genvar i;
        for (i = 0; i < width; i = i + 1) begin
            assign data_out[i] = data_in[(width - 1) - i];
        end
    endgenerate
    
    /* [PERSONAL NOTE]
     *
     * The generate block and for loop combination assigns outputs similarly
     * to the code below for a 4'b wide input...
     *
     * assign data_out[0] = data_in[3];
     * assign data_out[1] = data_in[2];
     * assign data_out[2] = data_in[1];
     * assign data_out[3] = data_in[0];
     */
    
endmodule
