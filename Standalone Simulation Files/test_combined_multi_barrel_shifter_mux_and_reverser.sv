`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 02:15:26 PM
// Design Name: 
// Module Name: test_combined_multi_barrel_shifter_mux_and_reverser
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


module test_combined_multi_barrel_shifter_mux_and_reverser;
    //Parameters...
    parameter width = 2;

    //Signals...
    logic select;
    logic [2 ** width - 1:0] shift;
    logic [2 ** width - 1:0] input_string;
    logic [2 ** width - 1:0] output_string_mux;
    logic [2 ** width - 1:0] output_string_reverser;

    //Instantiate the shifter mux...
    multi_barrel_shifter_mux #(.width(width)) lr_shifter_mux (
        .select(select),
        .shift(shift),
        .input_string(input_string),
        .output_string(output_string_mux)
    );
    
    //Instantiate the shifter reverser...
    multi_barrel_shifter_reverser #(.width(width)) lr_shifter_reverser (
        .select(select),
        .shift(shift),
        .input_string(input_string),
        .output_string(output_string_reverser)
    );

    //Test vectors...
    initial begin
        //Test case 1: Basic functionality check...
        select = 0; //Select left shift...
        shift = 2'b01; //Shift by 1...
        input_string = 4'b1100; //Input data...
        #10;
        $display("TC1: Select=%0d, Shift=%b, Input=%b, Output MUX=%b, Output Reverser=%b", 
                 select, shift, input_string, output_string_mux, output_string_reverser);

        //Test case 2: Right shift with select = 1...
        select = 1; //Select right shift...
        shift = 2'b01; //Shift by 1...
        input_string = 4'b1100; //Input data...
        #10;
        $display("TC2: Select=%0d, Shift=%b, Input=%b, Output MUX=%b, Output Reverser=%b", 
                 select, shift, input_string, output_string_mux, output_string_reverser);

        //Test case 3: Left shift with different shift value...
        select = 0; //Select left shift...
        shift = 2'b11; //Shift by 2...
        input_string = 4'b1001; //Input data...
        #10;
        $display("TC3: Select=%0d, Shift=%b, Input=%b, Output MUX=%b, Output Reverser=%b", 
                 select, shift, input_string, output_string_mux, output_string_reverser);

        //Test case 4: Right shift with different shift value...
        select = 1; //Select right shift...
        shift = 2'b10; //Shift by 2...
        input_string = 4'b1001; //Input data...
        #10;
        $display("TC4: Select=%0d, Shift=%b, Input=%b, Output MUX=%b, Output Reverser=%b", 
                 select, shift, input_string, output_string_mux, output_string_reverser);

        $stop;
    end
endmodule
