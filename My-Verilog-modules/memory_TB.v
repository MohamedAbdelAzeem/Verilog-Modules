
/* 4 x 4 memory test bench */
`timescale 1ns/1ps





module memory_TB();
	reg [3:0] mem_in_tb;
	wire [3:0] mem_out_tb;
	reg [1:0] address_tb;
	reg clk_tb;
	reg  wr_tb;



initial 
	begin
	clk_tb = 1'b0 ;
	end

always 
	begin
	#10 clk_tb = ~clk_tb;
	end


/* write then read operaion*/
initial
	begin
	wr_tb = 0 ;  /* read */
	address_tb = 2'b00 ;
	#20 address_tb = 2'b01;
	#20 address_tb = 2'b10;
	#20 address_tb = 2'b11;	 	
	#20 address_tb = 2'bzz;
	/* write */
	#20 wr_tb = 1 ;
	#20 address_tb = 2'b00; mem_in_tb = 4'b1111;
	#20 address_tb = 2'b01; mem_in_tb = 4'b0011;
	#20 address_tb = 2'b10; mem_in_tb = 4'b1100;
	#20 address_tb = 2'b11; mem_in_tb = 4'b0000;
	#20 address_tb = 2'bzz;
	
	#20 wr_tb = 0 ;  /* read */
	#20 address_tb = 2'b00 ;
	#20 address_tb = 2'b01;
	#20 address_tb = 2'b10;
	#20 address_tb = 2'b11;	 	

	end
memory m1(.mem_in(mem_in_tb), .mem_out(mem_out_tb), .address(address_tb), .clk(clk_tb), .wr(wr_tb));

endmodule 