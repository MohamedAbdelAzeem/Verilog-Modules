`timescale 1ns/1ps
module decoder_TB();

wire [7:0] out_TB;
reg [2:0] in_TB;


wire [7:0] out_TB2;
reg [2:0] in_TB2;
initial 
begin 

in_TB= 0 ;
in_TB2= 0 ;
#100
in_TB= 1;
in_TB2= 1 ;

#100 
in_TB =2 ;
in_TB2= 0 ;
end
Decoder3to8 D1(.in(in_TB) , .out(out_TB));
Decoder3to82 D2(.in(in_TB2) , .out(out_TB2));


endmodule 