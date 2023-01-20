module outshape (
						input  [8:0] s,
						input   KEY,resetG,turn,clk,p1,p2,
						input [17:0]p,
						input [3:0] win1,win2,
						output [0:134] Filter [0:79]
						);

`define SIZE 134	
`define SIZE1 79				

logic [0:`SIZE] hardcoded [0:`SIZE1];
shape SS(.original(hardcoded));

logic [24:0] hardcoded2 [0:24];
shape2 SS2(.xshapes(hardcoded2));

logic [24:0] hardcoded3 [0:24];
shape3 SS3(.oshapes(hardcoded3));

logic [0:24] hardcoded4 [0:24];
player1 SS4(.oshapes(hardcoded4));

logic [0:24] hardcoded5 [0:24];
player2 SS5(.oshapes(hardcoded5));

logic [0:24] hardcoded6 [0:24];
count SS6(.oshapes(hardcoded6));

logic [0:24] hardcoded7 [0:24];
count2 SS7(.oshapes(hardcoded7));

logic [0:24] hardcoded8 [0:24];
count3 SS8(.oshapes(hardcoded8));

logic [0:24] hardcoded9 [0:24];
count4 SS9(.oshapes(hardcoded9));

logic [0:24] hardcoded10 [0:24];
count5 SS10(.oshapes(hardcoded10));

logic [0:`SIZE] filtered [0:`SIZE1];

always @* begin

integer i,j,x11,y11;


for(i=0;i<`SIZE1+1;i++)
begin: iLoop
	for(j=0;j<`SIZE+1;j++)
	begin: jLoop

	
	filtered[i][j]  <= hardcoded[i][j];
	
	end //end of j loop
	end //end of i loop


for(y11=1;y11<25;y11++)
begin: xLoop
	for(x11=1;x11<25;x11++)
	begin: yLoop
	
	filtered[x11][y11+81] <= hardcoded4[x11-1][y11-1];
	filtered[x11][y11+108] <= hardcoded5[x11-1][y11-1];
	
	if(win1 == 4'b0001)
	begin
	filtered[x11+26][y11+81] <= hardcoded6[x11-1][y11-1];
	end
	else if (win1 == 4'b0010)
	begin
	filtered[x11+26][y11+81] <= hardcoded7[x11-1][y11-1];
	end
	else if (win1 == 4'b0011)
	begin
	filtered[x11+26][y11+81] <= hardcoded8[x11-1][y11-1];
	end
	else if (win1 == 4'b0100)
	begin
	filtered[x11+26][y11+81] <= hardcoded9[x11-1][y11-1];
	end
	else if (win1 == 4'b0101)
	begin
	filtered[x11+26][y11+81] <= hardcoded10[x11-1][y11-1];
	end
	else if (win1 == 4'b0110)
	begin
	filtered[x11+26][y11+81] <= hardcoded10[x11-1][y11-1];
	filtered[x11+53][y11+81] <= hardcoded6[x11-1][y11-1];
	end
	else if (win1 == 4'b0111)
	begin
	filtered[x11+26][y11+81] <= hardcoded10[x11-1][y11-1];
	filtered[x11+53][y11+81] <= hardcoded7[x11-1][y11-1];
	end
	else if (win1 == 4'b1000)
	begin
	filtered[x11+26][y11+81] <= hardcoded10[x11-1][y11-1];
	filtered[x11+53][y11+81] <= hardcoded8[x11-1][y11-1];
	end
	else if (win1 == 4'b1001)
	begin
	filtered[x11+26][y11+81] <= hardcoded10[x11-1][y11-1];
	filtered[x11+53][y11+81] <= hardcoded9[x11-1][y11-1];
	end
	else if (win1 == 4'b1010)
	begin
	filtered[x11+26][y11+81] <= hardcoded10[x11-1][y11-1];
	filtered[x11+53][y11+81] <= hardcoded10[x11-1][y11-1];
	end
	
	
	if(win2 == 4'b0001)
	begin
	filtered[x11+26][y11+108] <= hardcoded6[x11-1][y11-1];
	end
	else if (win2 == 4'b0010)
	begin
	filtered[x11+26][y11+108] <= hardcoded7[x11-1][y11-1];
	end
	else if (win2 == 4'b0011)
	begin
	filtered[x11+26][y11+108] <= hardcoded8[x11-1][y11-1];
	end
	else if (win2 == 4'b0100)
	begin
	filtered[x11+26][y11+108] <= hardcoded9[x11-1][y11-1];
	end
	else if (win2 == 4'b0101)
	begin
	filtered[x11+26][y11+108] <= hardcoded10[x11-1][y11-1];
	end
	else if (win2 == 4'b0110)
	begin
	filtered[x11+26][y11+108] <= hardcoded10[x11-1][y11-1];
	filtered[x11+53][y11+108] <= hardcoded6[x11-1][y11-1];
	end
	else if (win2 == 4'b0111)
	begin
	filtered[x11+26][y11+108] <= hardcoded10[x11-1][y11-1];
	filtered[x11+53][y11+108] <= hardcoded7[x11-1][y11-1];
	end
	else if (win2 == 4'b1000)
	begin
	filtered[x11+26][y11+108] <= hardcoded10[x11-1][y11-1];
	filtered[x11+53][y11+108] <= hardcoded8[x11-1][y11-1];
	end
	else if (win2 == 4'b1001)
	begin
	filtered[x11+26][y11+108] <= hardcoded10[x11-1][y11-1];
	filtered[x11+53][y11+108] <= hardcoded9[x11-1][y11-1];
	end
	else if (win2 == 4'b1010)
	begin
	filtered[x11+26][y11+108] <= hardcoded10[x11-1][y11-1];
	filtered[x11+53][y11+108] <= hardcoded10[x11-1][y11-1];
	end
	
	if( p[0] == 0 && p[9] == 1)begin
		filtered[x11][y11] <= hardcoded3[x11-1][y11-1];	end
	if( p[9] == 0 && p[0] == 1 ) begin
		filtered[x11][y11] <= hardcoded2[x11-1][y11-1];end
	
	
	if(p[10] == 0 && p[1] == 1)begin
		filtered[x11 ][y11 +26 ] <=  hardcoded2[x11-1][y11-1 ];end
	if(p[1] == 0 && p[10] == 1)begin
		filtered[x11][y11 + 26] <= hardcoded3[x11-1][y11-1];end
		
	
	
	if(p[11] == 0 && p[2] == 1)begin
		filtered[x11][y11 + 53] <=  hardcoded2[x11-1][y11-1];end
	if(p[2] == 0 && p[11] == 1)begin
		filtered[x11][y11 + 53] <=  hardcoded3[x11-1][y11-1];end
		
		
		
	if(p[12] == 0 && p[3] == 1)begin
		filtered[x11+26][y11] <=  hardcoded2[x11-1][y11-1];end
	if(p[3] == 0 && p[12] == 1)begin
		filtered[x11+26][y11] <=  hardcoded3[x11-1][y11-1];end
		
		
		
	if(p[13] == 0 && p[4] == 1)begin
		filtered[x11 +26][y11 + 26] <=  hardcoded2[x11-1][y11-1];end
	if(p[4] == 0 && p[13] == 1)begin
		filtered[x11 + 26][y11 + 26] <=  hardcoded3[x11-1][y11-1];end
		
		
		
	if(p[14] == 0 && p[5] == 1)begin
		filtered[x11 +26][y11+53] <=  hardcoded2[x11-1][y11-1];end
	if(p[5] == 0 && p[14] == 1)begin
		filtered[x11 +26][y11+53] <= hardcoded3[x11 -1][y11-1];end
	
	
	
	if(p[15] == 0 && p[6] == 1)begin
		filtered[x11+53][y11] <= hardcoded2[x11-1][y11-1];end
	if(p[6] == 0 && p[15] == 1)begin
		filtered[x11+53][y11] <= hardcoded3[x11 -1][y11-1];end
		
		
	if(p[16] == 0 && p[7] == 1)begin
		filtered[x11 +53][y11 +26] <=  hardcoded2[x11-1][y11-1];end
	if(p[7] == 0 && p[16] == 1)begin
		filtered[x11 + 53][y11 +26] <=  hardcoded3[x11-1][y11-1];end
		
	
	
	if(p[17] == 0 && p[8] == 1)begin
		filtered[x11 + 53][y11+ 53] <=  hardcoded2[x11-1][y11-1];end
	if(p[8] == 0 && p[17] == 1)begin
		filtered[x11+ 53][y11+ 53] <= hardcoded3[x11-1][y11-1];end
		
		
	end //end of x loop
	end //end of y loop
	
	
	
end //end of always block



		assign Filter = filtered;
endmodule