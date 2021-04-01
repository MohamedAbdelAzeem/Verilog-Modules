module RegisterFile(read1, read2, writeReg, writedata, regwrite, data1, data2, clock);
input [4:0] read1, read2, writeReg;
input [31:0] writedata;
input regwrite, clock;
output data1, data2;

reg [31:0] RE;

assign data1= RE[read1];
assign data2= RE[read2];

always @ (posedge clock)
begin 
 if(regwrite)
	begin RE[writeReg] <= writedata;
end 
end
endmodule
