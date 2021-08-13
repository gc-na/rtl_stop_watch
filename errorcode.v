`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:47 08/13/2021 
// Design Name: 
// Module Name:    test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module test(
input	clk,
input reset,
input stop,
output reg [6:0] sec,
output reg [6:0] min,
output reg [4:0] hour,
output reg [16:0] real_sec
	 );
	 always @ (posedge clk or posedge reset)
		begin
			 if (reset==1)
				begin
					real_sec<=16'b0000000000000000;
					sec<=6'b000000;
					min<=6'b000000;
					hour<=4'b0000;
				end	
			 else
				 begin
						if( stop!=1 )
							begin
								real_sec<=real_sec+1;
								hour <= real_sec / 1024;
								min <= real_sec / 64;
								sec <= real_sec % 64;
							end
				end
		end
		
endmodule
