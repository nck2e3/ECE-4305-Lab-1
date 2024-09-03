`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: California State Polytechnic University Pomona
// Engineer: Noah C. King
// 
// Create Date: 08/28/2024 01:53:34 PM
// Design Name: Parametric Right Barrel Shifter
// Module Name: param_right_shifter
// Project Name: ECE-4305 Lab 1
// Target Devices: Nexys A7-100T Development Board
// Tool Versions: Vivado 2024.1.1
// Description: A right barrel shifter...
// 
// Dependencies: None
// 
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////

module param_right_shifter
    #(parameter width = 2)  
    (
        input logic [width-1:0] shift,                 // Desired shift amount...
        input logic [2 ** width-1:0] input_string,     // Input string...
        output logic [2 ** width-1:0] output_string    // Output string...
    );

    // Array size should be `width`, as each index corresponds to a unique shift value.
    logic [2 ** width-1:0] stage [2 ** width-1:0];  //Array to hold each stage of the shift...

    integer i;

    always_comb begin
        //Stage 0 is the input string...
        stage[0] = input_string;

        //Perform the shifts for each stage...
        for (i = 1; i < 2 ** width; i = i + 1) begin
            stage[i] = (stage[i-1] >> 1) | (stage[i-1] << (2 ** width - 1));
        end

        //Assign the stage corresponding to the desired shift to the output...
        output_string = stage[shift];
    end
endmodule









