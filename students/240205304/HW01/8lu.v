module demo_6(a,b,c,d,e,f,g,h,sel);
input a,b,c,d,e,f,g,h,sel;
reg[7:0] w;
output reg[7:0] num;
reg flag;
always@(*)
begin
   if(!sel) begin
     w=8'd0;
     flag=1'b0;
   end
   else begin
              w={a,b,c,d,e,f,g,h};
               if(!flag&&w!=8'h00)
                      flag=1'b1;
      if(!flag) begin
             casex(w)
                     8'b1xxxxxxx : num=3'd0;
                     8'b1xxxxxxx : num=3'd1;
                     8'b1xxxxxxx : num=3'd2;
                     8'b1xxxxxxx : num=3'd3;
                     8'b1xxxxxxx : num=3'd4;
                     8'b1xxxxxxx : num=3'd5;
                     8'b1xxxxxxx : num=3'd6;
                     8'b1xxxxxxx : num=3'd7;
                     default: num=3'd0;
            endcase
      end
      else
           num=3'd0;
     end
end
endmodle