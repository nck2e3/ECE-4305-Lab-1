`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: California State Polytechnic University Pomona
// Engineer: Noah C. King
// 
// Create Date: 09/03/2024 12:34:19 PM
// Design Name: 
// Module Name: test_combined_separate_left_and_right_shifter
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


module test_combined_separate_left_and_right_shifter;
    //Parameters...
    parameter width = 3; 
    
    //Inputs...
    reg [width-1:0] shift;
    reg [2 ** width-1:0] input_string;
    
    //Outputs...
    wire [2 ** width-1:0] output_left_string;
    wire [2 ** width-1:0] output_right_string;
    
    //Instantiate the left shifter...
    param_left_shifter #(.width(width)) uut_left (
        .shift(shift), 
        .input_string(input_string), 
        .output_string(output_left_string)
    );

    //Instantiate the right shifter...
    param_right_shifter #(.width(width)) uut_right (
        .shift(shift), 
        .input_string(input_string), 
        .output_string(output_right_string)
    );
    
    initial begin
        // Initialize Inputs
        input_string = 8'b1000_0001; 
        
        //shift = 0...
        shift = 0;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 1...
        shift = 1;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 2...
        shift = 2;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 3...
        shift = 3;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 4...
        shift = 4;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 5...
        shift = 5;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 6...
        shift = 6;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 7...
        shift = 7;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 8...
        shift = 8;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 9...
        shift = 9;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 10...
        shift = 10;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 11...
        shift = 11;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 12...
        shift = 12;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 13...
        shift = 13;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 14...
        shift = 14;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 15...
        shift = 15;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        //shift = 16...
        shift = 16;
        #10;
        $display("Shift: %0d, Input: %b, Left Output: %b, Right Output: %b", 
                 shift, input_string, output_left_string, output_right_string);
        
        // End of test
        $stop;
    end
endmodule
