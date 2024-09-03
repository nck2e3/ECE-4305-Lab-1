`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: California State Polytechnic University Pomona
// Engineer: Noah C. King
// 
// Create Date: 08/31/2024 04:55:37 PM
// Design Name: 
// Module Name: multi_barrel_shifter_reverser
// Project Name: ECE-4305 Lab 1
// Target Devices: Nexys A7-100T Development Board
// Tool Versions: Vivado 2024.1.1
// Description: A testbench for a left barrel shifter...
// 
// Dependencies: None
// 
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module multi_barrel_shifter_reverser
    #(parameter width = 2)
    (
        input logic select,
        input logic [2 ** width - 1:0] shift,
        input logic [2 ** width - 1:0] input_string,
        output logic [2 ** width - 1:0] output_string
    );
    
    //Output buffers for right shifter...
    logic [2 ** width - 1:0] output_string_rs, output_string_ls, intermediate_ls;
    
    //Output buffers for reversers...
    logic [2 ** width - 1:0] reverse_stage;
    
    //Instantiating the first reverser...
    param_reverser #(.width(2 ** width)) REV_1 (.data_in(input_string), .data_out(reverse_stage)); 
    
    //Instantiating parametric right shifter for left shifting operation...
    param_right_shifter #(.width(width)) PRS_INTERMEDIATE (
        .shift(shift), 
        .input_string(reverse_stage), 
        .output_string(intermediate_ls)
    );
    
    //Instantiating the second reverser...
    param_reverser #(.width(2 ** width)) REV_2 (.data_in(intermediate_ls), .data_out(output_string_ls)); 
    
        
    //Instantiating parametric right shifter for right shifting operation...
    param_right_shifter #(.width(width)) PRS_PASSTHROUGH (
        .shift(shift), 
        .input_string(input_string), 
        .output_string(output_string_rs)
    );
    
    assign output_string = select ? output_string_rs : output_string_ls;
    
    
endmodule
