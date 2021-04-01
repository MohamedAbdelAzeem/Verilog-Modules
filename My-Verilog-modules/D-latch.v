/* Behavioral model of D_latch

*/

module D_latch( output reg Q, Qn
		,input wire E,D);
always @(E or D)
  if( E == 1'b1)
	begin 
	Q <= D;
	Qn <= ~D;
	end 
endmodule
