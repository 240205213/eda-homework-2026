module count10_r(clk,reset,out);
input clk,reset;
output [3:0] out;
reg [3:0] out;
always@(posedge clk or negedge reset)
begin
if(!reset)
out<=4'd9;
else if(out==4'd9)
out<=4'd0;
else out<=out+1;
end
endmodule


module eight_race(clk,reset,key,num);
input clk,reset;
input [7:0] key;
output reg [3:0] num;
reg lock;
always@(posedge clk or negedge reset)
begin
if(reset == 1'b0)
begin
num <= 4'd0;
lock <= 1'b0;
end
else
begin
if(lock == 1'b0)
begin
case(key)
8'b00000001: num <= 4'd1;
8'b00000010: num <= 4'd2;
8'b00000100: num <= 4'd3;
8'b00001000: num <= 4'd4;
8'b00010000: num <= 4'd5;
8'b00100000: num <= 4'd6;
8'b01000000: num <= 4'd7;
8'b10000000: num <= 4'd8;
endcase
if(key != 8'd0)
lock <= 1'b1;
end
end
end
endmodule