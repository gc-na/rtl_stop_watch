`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:30:27 08/12/2021 
// Design Name: 
// Module Name:    stopwatch3 
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
module stopwatch3(
input	clk,
input reset,
input stop,
input record,
output reg ring,
output reg [6:0] sec,
output reg [6:0] min,
output reg [4:0] hour,
output reg [6:0] rec_sec,
output reg [6:0] rec_min,
output reg [4:0] rec_hour
	 );
	 always @ (posedge clk or posedge reset)
		begin
			 if (reset==1)
				begin
					sec<=6'b000000;
					min<=6'b000000;
					hour<=4'b0000;
					ring<=0;
				end	
			 else
				 begin
						if( stop!=1 )
							begin
								sec<=sec+1;
								if (sec==60)
								begin
								min<=min+1;
								sec<=0;
								if (min==60)
									begin
									hour<=hour+1;
									if(hour==13)
										begin
										hour<=4'b0000;
										end
									end
								end
							end
						else
							begin
								ring<=1;
							end
				end
		end
		
		always @ (posedge record)
		begin
			if(reset)
			begin
				rec_sec<=0;
				rec_min<=0;
				rec_hour<=0;
			end
			else
				begin
					rec_sec<=sec;
					rec_min<=min;
					rec_hour<=hour;
				end
		end
endmodule
