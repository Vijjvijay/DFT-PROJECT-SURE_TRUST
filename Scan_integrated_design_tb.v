`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2025 09:00:52 PM
// Design Name: 
// Module Name: DFT1_tb
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

module DFT1_tb;
  reg refclk,clk2,reset,test_mode;
  reg si1,si2,se;
  reg [4:0] data_in;
  wire [4:0] data_out;
  wire so1,so2;
  
  DFT1 dut(.refclk(refclk),.reset(reset),.test_mode(test_mode),.si1(si1),.si2(si2),.se(se),.so1(so1),.so2(so2),.clk2(clk2),.data_in(data_in),.data_out(data_out));
  
  initial begin
    refclk=1;
  forever #5 refclk = ~refclk;    
  end
  initial begin
    clk2=1;
      forever #5 clk2 = ~clk2;

  end
  
  initial begin
  reset=1'b1; test_mode=1'b0; se=1'b1; si1=1'b1; si2=1'b1; data_in=5'b01111;
  #10
  //Shiftin -> capture->shiftout
  
  //shiftin
  #10 reset=1'b0;
  data_in = 5'b00001;
      test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
    
  //capture
 // #10 se=1'b0; 
  
  //shiftout
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  
//shiftin
  #10 data_in = 5'b00111; test_mode=1'b1; se=1'b1; si1=1'b1; si2=1'b1;
  #10 test_mode=1'b1; se=1'b1; si1=1'b1; si2=1'b1;
  #10 test_mode=1'b1; se=1'b1; si1=1'b1;si2=1'b1;
  #10 test_mode=1'b1; se=1'b1; si1=1'b1;si2=1'b1;
  #10 test_mode=1'b1; se=1'b1; si1=1'b1;si2=1'b1;
  #10 test_mode=1'b1; se=1'b1; si1=1'b1;si2=1'b1;
  #10 test_mode=1'b1; se=1'b1; si1=1'b1;si2=1'b1;
  #10 test_mode=1'b1; se=1'b1; si1=1'b1;si2=1'b1;
  #10 test_mode=1'b1; se=1'b1; si1=1'b1;si2=1'b1;
  #10 test_mode=1'b1; se=1'b1; si1=1'b1;si2=1'b1;
  #10 test_mode=1'b1; se=1'b1; si1=1'b1;si2=1'b1;
  #10 test_mode=1'b1; se=1'b1; si1=1'b1;si2=1'b1;
  #10 test_mode=1'b1; se=1'b1; si1=1'b1;si2=1'b1;
  #10 test_mode=1'b1; se=1'b1; si1=1'b1;si2=1'b1;
  #10 test_mode=1'b1; se=1'b1; si1=1'b1;si2=1'b1;
  
  //capture
 // #10 se=1'b0; 
 
 //shiftout 
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
  #10 se=1;
   /* #10; data_in= 5'b00100;
    #10; data_in = 5'b00011;
    #10; data_in = 5'b00111;
    #10; data_in = 5'b11111;
    #40;
  */
  #30;
  #10 test_mode=1'b1; se=1'b1; si1=1'b0; si2=1'b0;
  #300;
    $finish;
  end
  
  initial
    $monitor("Time= %t data_in = %b and data_out = %b and se=%b  si1=%b and si2=%b and so1=%b and so2=%b  ", $time,data_in,data_out,se,si1,si2,so1,so2);
  
endmodule