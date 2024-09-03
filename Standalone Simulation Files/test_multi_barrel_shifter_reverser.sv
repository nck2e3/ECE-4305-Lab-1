`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2024 05:43:17 PM
// Design Name: 
// Module Name: test_multi_barrel_shifter_reverser
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


module test_multi_barrel_shifter_reverser;

    //Parameters...
    parameter width = 2;

    //Signals...
    logic select;
    logic [2 ** width - 1:0] shift;
    logic [2 ** width - 1:0] input_string;
    logic [2 ** width - 1:0] output_string;

    //Instantiate the shifter...
    multi_barrel_shifter_reverser #(.width(width)) lr_shifter_reverser (
        .select(select),
        .shift(shift),
        .input_string(input_string),
        .output_string(output_string)
    );

    //Test vectors...
    initial begin
        //Test case 1: Basic functionality check...
        select = 0; //Select left shift...
        shift = 2'b01; //Shift by 1...
        input_string = 4'b1100; //Input data...
        #10;
        $display("TC1: Select=%0d, Shift=%b, Input=%b, Output=%b", select, shift, input_string, output_string);

        //Test case 2: Right shift with select = 1...
        select = 1; //Select right shift...
        shift = 2'b01; //Shift by 1...
        input_string = 4'b1100; //Input data...
        #10;
        $display("TC2: Select=%0d, Shift=%b, Input=%b, Output=%b", select, shift, input_string, output_string);

        //Test case 3: Left shift with different shift value...
        select = 0; //Select left shift...
        shift = 2'b11; //Shift by 2...
        input_string = 4'b1001; //Input data...
        #10;
        $display("TC3: Select=%0d, Shift=%b, Input=%b, Output=%b", select, shift, input_string, output_string);

        //Test case 4: Right shift with different shift value...
        select = 1; //Select right shift...
        shift = 2'b10; //Shift by 2...
        input_string = 4'b1001; //Input data...
        #10;
        $display("TC4: Select=%0d, Shift=%b, Input=%b, Output=%b", select, shift, input_string, output_string);
        
        $stop;
    end

endmodule

