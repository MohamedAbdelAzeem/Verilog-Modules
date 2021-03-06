/* Behavioral model of D_flipflop with Asynchronous Reset
*/

module D_FlipFlop( output reg Q, Qn
		,input wire clk,D, reset);
always @(posedge clk or negedge reset)
  if(!reset)
	begin 
	Q <= 0;
	Qn <= 1;
	end 
   else
	begin 
	 Q <= D;
	Qn <= ~D;
	end
endmodule
