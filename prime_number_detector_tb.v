`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2024 18:45:41
// Design Name: 
// Module Name: prime_number_detector_tb
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


module prime_number_detector_tb();
    
    reg [7:0] A, B;
    wire [7:0] C;
    wire [3:0] D;
    //reg clk, rst;
    
    prime_number_detector uut(.A(A), .B(B), .C(C), .D(D));
    
        initial
        begin        
            A = 8'b0;
            B = 8'd8;
        end
    
    initial
    begin
        #20;      
        //$monitor("%t || A = %d || B = %d || C = %d || D = %d", $time, A, B, C, D); 
        A = 8'd6; #20; A = 8'd1; #20; A = 8'd5; #20;
        A = 8'd79; #20; A = 8'd79; #20; A = 8'd79; #20;
        A = 8'd23; #20; A = 8'd251; #20; A = 8'd13; #20;
        A = 8'd56; #20; A = 8'd254; #20; A = 8'd100; #20;
        A = 8'd56; #20; A = 8'd97; #20; A = 8'd100; #20;
        $stop; 
    end
        
endmodule
