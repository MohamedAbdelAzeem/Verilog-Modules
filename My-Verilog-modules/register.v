
/*
parallel in / parallel out register

*/

module register(output reg [7:0]reg_out,
		input wire [7:0]reg_in, input wire EN, clk, reset);
always @ (posedge clk or negedge reset)
	if(!reset)
	begin
		reg_out <= 0;
	end 
	else 
	begin 
		if(EN)
			reg_out <= reg_in;
	end 
endmodule 