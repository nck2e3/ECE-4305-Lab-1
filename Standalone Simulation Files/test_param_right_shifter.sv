`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: California State Polytechnic University Pomona
// Engineer: Noah C. King
// 
// Create Date: 08/31/2024 01:17:39 PM
// Design Name: Testbench for Parametric Left Barrel Shifter
// Module Name: test_param_left_shifter
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


module test_param_left_shifter;
    //Parameters...
    parameter width = 2; 
    
    //Inputs...
    reg [width-1:0] shift;
    reg [2 ** width-1:0] input_string;
    
    //Outputs...
    wire [2 ** width-1:0] output_string;
    
    //Instantiate the Unit Under Test (UUT)...
    param_left_shifter #(.width(width)) uut (
        .shift(shift), 
        .input_string(input_string), 
        .output_string(output_string)
    );
    
    initial begin
        //Initialize Inputs...
        input_string = 4'b1001; //Example 16-bit input string...
        shift = 0;
        
        //Test case 1: shift = 0...
        shift = 0;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 2: shift = 1...
        shift = 1;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 3: shift = 2...
        shift = 2;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 4: shift = 3...
        shift = 3;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 5: shift = 4...
        shift = 4;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 6: shift = 5...
        shift = 5;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 7: shift = 6...
        shift = 6;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 8: shift = 7...
        shift = 7;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 9: shift = 8...
        shift = 8;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 10: shift = 9...
        shift = 9;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 11: shift = 10...
        shift = 10;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 12: shift = 11...
        shift = 11;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 13: shift = 12...
        shift = 12;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 14: shift = 13...
        shift = 13;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 15: shift = 14...
        shift = 14;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 16: shift = 15...
        shift = 15;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //Test case 17: shift = 16...
        shift = 16;
        #10;
        $display("Shift: %0d, Input: %b, Output: %b", shift, input_string, output_string);
        
        //End of test...
        $stop;
    end
endmodule
