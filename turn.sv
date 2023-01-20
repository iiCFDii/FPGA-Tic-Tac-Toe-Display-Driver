module turn ( input logic [8:0] s , input logic clk, turn,reset,
                        output logic [17:0] p, output logic p1,p2);
								
initial begin
									for(int i = 0; i < 18; i++)
											p[i] <= 0;	
end
											
always_ff @(posedge clk)
begin
if(s[8] == 1 && turn == 0 && p[9] == 0)
begin
p[0] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end

if(s[7] == 1 && turn == 0 && p[10] == 0 )
begin
p[1] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end


if(s[6] == 1 && turn == 0 && p[11] == 0)
begin
p[2] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end


if(s[5] == 1 && turn == 0 && p[12] == 0)
begin
p[3] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end


if(s[4] == 1 && turn == 0 && p[13] == 0)
begin
p[4] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end


if(s[3] == 1 && turn == 0 && p[14] == 0)
begin
p[5] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end



if(s[2] == 1 && turn == 0 && p[15] == 0)
begin
p[6] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end



if(s[1] == 1 && turn == 0 && p[16] == 0)
begin
p[7] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end



if(s[0] == 1 && turn == 0 && p[17] == 0)
begin
p[8] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end





if(s[8] == 1 && turn == 1 && p[0] == 0  )
begin
p[9] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end


if(s[7] == 1 && turn == 1 && p[1] == 0)
begin
p[10] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end


if(s[6] == 1 && turn == 1 && p[2] == 0)
begin
p[11] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end


if(s[5] == 1 && turn == 1 && p[3] == 0)
begin
p[12] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end


if(s[4] == 1 && turn == 1 && p[4] == 0)
begin
p[13] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end


if(s[3] == 1 && turn == 1 && p[5] == 0)
begin
p[14] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end



if(s[2] == 1 && turn == 1 && p[6] == 0)
begin
p[15] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end



if(s[1] == 1 && turn == 1 && p[7] == 0)
begin
p[16] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end


if(s[0] == 1 && turn == 1 && p[8] == 0)
begin
p[17] <= 1;
end
else if(reset == 1)
begin
p <= 18'b0;
end

								
end


always_ff @(posedge clk)
begin
if((p[0] == 1 && p[1] == 1 && p[2] == 1) | (p[3] == 1 && p[4] == 1 && p[5] == 1) | (p[6] == 1 && p[7] == 1 && p[8] == 1)
 | (p[0] == 1 && p[3] == 1 && p[6] == 1) | (p[1] == 1 && p[4] == 1 && p[7] == 1)| (p[2] == 1 && p[5] == 1 && p[8] == 1)
 | (p[0] == 1 && p[4] == 1 && p[8] == 1) | (p[2] == 1 && p[4] == 1 && p[6] == 1))
begin
p1 <= 1;
p2 <= 0;

end
else
begin
p1 <= 0;

end



if( (p[9] == 1 && p[10] == 1 && p[11] == 1) | (p[12] == 1 && p[13] == 1 && p[14] == 1) | (p[15] == 1 && p[16] == 1 && p[17] == 1)
 | (p[9] == 1 && p[12] == 1 && p[15] == 1) | (p[10] == 1 && p[13] == 1 && p[16] == 1)| (p[11] == 1 && p[14] == 1 && p[17] == 1)
 | (p[9] == 1 && p[13] == 1 && p[17] == 1) | (p[11] == 1 && p[13] == 1 && p[15] == 1))
begin
p2 <= 1;
p1 <= 0;
end
else
begin
p2 <= 0;
end

end					
endmodule