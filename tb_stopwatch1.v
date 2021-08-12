`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:34:00 08/12/2021
// Design Name:   stopwatch1
// Module Name:   C:/Users/Cju/stopwatch/tb_stopwatch1.v
// Project Name:  stopwatch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stopwatch1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_stopwatch1;

	// Inputs
	reg clk;
	reg reset;
	reg stop;

	// Outputs
	wire ring;
	wire [5:0] sec;

	// Instantiate the Unit Under Test (UUT)
	stopwatch1 uut (
		.clk(clk), 
		.reset(reset), 
		.stop(stop), 
		.ring(ring), 
		.sec(sec)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		stop = 0;

		// Wait 100 ns for global reset to finish
		#1 reset=1;
		#1 reset=0;
		#98 stop=1;
        
		// Add stimulus here

	end
	
	always #5 clk=~clk;
      
endmodule

