module counter(data, load, clk ,clear, out);
input clk, load, clear;
input [7:0] data;
output  [7:0] out;

reg [7:0] count;
assign out = count;
//inverted clear input
always@(posedge clk)
begin
if(!clear)
count = 0;
else if(load)
count = data;
else
count = count +1;
end
endmodule
