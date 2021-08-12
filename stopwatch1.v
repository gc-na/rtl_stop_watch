`timescale 1ns / 1ps

module stopwatch1(
input	clk,
input reset,
input stop,
output reg ring,
output reg [5:0] sec
	 );
	 
	 always @ (posedge clk or posedge reset)
	 
		 if (reset==1)
			begin
				sec<=5'b00000;
				ring<=0;
			end	
		 else
			 begin
					if( stop!=1 )
						begin
							sec<=sec+1;
						end
					else
						begin
							ring<=1;
						end
			end

endmodule
