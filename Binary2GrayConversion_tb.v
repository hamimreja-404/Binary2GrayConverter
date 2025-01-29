`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Hamim Reja
// Create Date: 11.12.2024 01:15:57
// Module Name: Binary2GrayConversion_tb
// Project Name: Test Bench for Binary Gray Conversion
// Description: 
// 
//////////////////////////////////////////////////////////////////////////////////


module Binary2GrayConversion_tb;

    reg [3:0] binary;
    wire [3:0] gray;
    Binary2GrayConverter uut(
        .binary(binary),    
        .gray(gray)
);

    initial
    begin
        $monitor("Binary Input = %b | Gray Output = %b", binary, gray);

        // Test cases
        binary = 4'b0000; #5;
        binary = 4'b0001; #5;
        binary = 4'b0010; #5;
        binary = 4'b0011; #5;
        binary = 4'b0100; #5;
        binary = 4'b0101; #5;
        binary = 4'b0110; #5;
        binary = 4'b0111; #5;
        binary = 4'b1000; #5;
        binary = 4'b1001; #5;
        binary = 4'b1010; #5;
        binary = 4'b1011; #5;
        binary = 4'b1100; #5;
        binary = 4'b1101; #5;
        binary = 4'b1110; #5;
        binary = 4'b1111; #5;

        #5 $stop;
    end

endmodule
