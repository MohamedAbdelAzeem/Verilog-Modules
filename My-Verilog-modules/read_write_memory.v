/* 4 x 4 read wirte memory*/ 

module memory(output reg [3:0]mem_out,
	 input wire [1:0]address,
	 input wire [3:0] mem_in, input wire clk, wr);

/* my memory*/
reg [3:0] mem [0:3];
/* read operation */ 
always @ (posedge clk)
if(wr)
	mem[address] = mem_in;	
else
	
	mem_out = mem[address];
	
endmodule 