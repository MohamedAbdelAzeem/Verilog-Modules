module adder(a,b ,sum ,cout);
input [3:0] a,b;
output [3:0]sum;
output cout;
//behavioural description
assign {cout, sum} = a + b ;
endmodule
