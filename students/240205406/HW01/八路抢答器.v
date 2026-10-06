module xz(a,b,c,d,e,f,g,h,sel);
	input a,b,c,d,e,f,g,h,sel;
  	output reg [7:0] tmp;
	reg [7:0] w;
	always @(*)
 	begin
		if(!sel)
		w=8'd0;
		else w={a,b,c,d,e,f,g,h};
		tmp=w;
end
endmodule
 