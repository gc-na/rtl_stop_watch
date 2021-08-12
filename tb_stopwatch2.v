`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:39:03 08/12/2021
// Design Name:   stopwatch2
// Module Name:   C:/Users/Cju/stopwatch/tb_stopwatch2.v
// Project Name:  stopwatch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stopwatch2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_stopwatch2;

	// Inputs
	reg clk;
	reg reset;
	reg stop;
	reg record;

	// Outputs
	wire ring;
	wire [6:0] sec;
	wire [6:0] min;
	wire [4:0] hour;
	wire [6:0] rec_sec;
	wire [6:0] rec_min;
	wire [4:0] rec_hour;

	// Instantiate the Unit Under Test (UUT)
	stopwatch2 uut (
		.clk(clk), 
		.reset(reset), 
		.stop(stop), 
		.record(record), 
		.ring(ring), 
		.sec(sec), 
		.min(min), 
		.hour(hour), 
		.rec_sec(rec_sec), 
		.rec_min(rec_min), 
		.rec_hour(rec_hour)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		stop = 0;
		record = 0;

		// Wait 100 ns for global reset to finish
		#1 reset=1;
		#1 reset=0;
		
		#50 record=1;
		#1 record=0;
		#50 record=1;
		#1 record=0;
		
        
		// Add stimulus here

	end
	
	always #5 clk=~clk;
      
endmodule

