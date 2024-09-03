`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: California State Polytechnic University, Pomona
// Engineer: Noah C. King
// 
// Create Date: 08/31/2024 02:25:34 PM
// Design Name: 
// Module Name: multi_barrel_shifter_mux
// Project Name: ECE-4305 Lab 1
// Target Devices: Nexys A7-100T Development Board
// Tool Versions: Vivado 2024.1.1
// 
// Dependencies: None
// 
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module multi_barrel_shifter_mux
    #(parameter width = 3)
    (
        input logic select,
        input logic [2 ** width - 1:0] shift,
        input logic [2 ** width - 1:0] input_string,
        output logic [2 ** width - 1:0] output_string
    );
    
    //Output registers for each shifter...
    logic [2 ** width - 1:0] output_string_rs, output_string_ls;
    
    //Instantiating parametric right shifter...
    param_right_shifter #(.width(width)) PRS (
        .shift(shift), 
        .input_string(input_string), 
        .output_string(output_string_rs)
    );
    
    //Instantiating parametric left shifter...
    param_left_shifter #(.width(width)) PLS (
        .shift(shift), 
        .input_string(input_string), 
        .output_string(output_string_ls)
    );
    
    //Creating an array to pass into the parametric mux inputs...
    logic [2 ** width - 1:0] data_in_array[1:0];  
    assign data_in_array[0] = output_string_ls;  
    assign data_in_array[1] = output_string_rs;
    
    //Instantiating parametric mux...
    param_mux #(.width_select(1), .width_input(2 ** width)) PMUX (
        .select(select),
        .data_in(data_in_array), //n-inputs of variable size...
        .data_out(output_string)
    );
endmodule
