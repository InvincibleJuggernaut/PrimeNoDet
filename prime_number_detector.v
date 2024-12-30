`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2024 18:00:00
// Design Name: 
// Module Name: prime_number_detector
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

module prime_number_detector(
    input [7:0] A, //data input
    input [3:0] B, //number of inputs
    //input clk,
    //input rst,
    output reg [7:0] C, //detected prime nos
    output reg [3:0] D //number of prime nos detected
    );
      
    reg prime_flag;
    reg status;
    reg [3:0] count;
    
    integer i;

    initial
    begin
        D = 4'b0000;
        C = 8'b00000000;
    end
    
    always @(A,B)
    begin
            if(A == 8'd0 || A == 8'd1)
            begin
                prime_flag = 0;
                status = 1;
            end
            else
            begin
                prime_flag = 1;
                status = 0;
                for (i=2; i<=A/2; i=i+1)
                begin
                    if(A % i == 0)
                    begin
                        prime_flag = 0;
                        status = 1;
                    end
                end
                status = 1;
            end
            if (status)
            begin
                if(prime_flag)
                begin
                    if(D < B)
                    begin
                        D = D+1;
                        C = A;
                    end
                end
                else
                begin
                    C = 0;
                end
            end
        end
endmodule
