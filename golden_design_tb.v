`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2025 07:03:58 PM
// Design Name: 
// Module Name: golden_design_tb
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2025 07:03:58 PM
// Design Name: 
// Module Name: golden_design_tb
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


module golden_design_tb;
  reg refclk,clk2,reset;
  reg [4:0] data_in;
  wire [4:0] data_out;
  
  golden_design dut(.refclk(refclk),.reset(reset),.clk2(clk2),.data_in(data_in),.data_out(data_out));
  
  initial begin
    refclk=1;
  forever #5 refclk = ~refclk;    
  end
  initial begin
    clk2=1;
      forever #5 clk2 = ~clk2;

  end
  
  initial begin
  reset=1'b1;
  #10 reset=1'b0;
    data_in = 5'b00001;
    #10; data_in= 5'b00100;
    #10; data_in = 5'b00011;
    #10; data_in = 5'b00111;
    #10; data_in = 5'b11111;
    #40;
    $finish;
  end
  
  initial
    $monitor("data_in = %b and data_out = %b ", data_in,data_out);
  
endmodule
