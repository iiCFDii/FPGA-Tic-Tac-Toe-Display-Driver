module  color_mapper ( 	input  [8:0] s,
								input   KEY,resetG,turn,clk,p1,p2,
								input logic [3:0] win1,win2,
								input logic [17:0] p,
								input       [9:0] DrawX, DrawY,
								output logic[7:0] Red, Green, Blue 
							  
							  );
 
	logic [9:0] Xpos = 320;
	logic [9:0] Ypos = 230;
	
	logic filtered_on;
	logic orig_on;
	logic screen_on;
	
   int DistX_ball, DistY_ball;
	int DistX_orig, DistY_orig;
	 
	assign DistX_ball = DrawX - Xpos;
   assign DistY_ball = DrawY - Ypos;
	
	assign DistX_orig = DrawX - 160;
   assign DistY_orig = DrawY - 230;

	//various shapes
	logic [134:0] originalImage [0:79];
	logic [0:134] filtered [0:79];
	logic [0:255] background [39:0];
	
	int row, col;
	
	outshape OS(.s(s),.KEY(KEY),.Filter(filtered), .resetG(resetG), .turn(turn), .p(p),.clk(clk), .p1(p1), .p2(p2), .win1(win1), .win2(win2));
	background_screen bb(.bg(background));
	
	 always_comb
	 begin: filtered_go
		if(DistX_ball >=0 && DistX_ball <135 && DistY_ball >=0 && DistY_ball <80 && screen_on)
			filtered_on = 1'b1;
		else
			filtered_on = 1'b0;
	 end
	 
	 always_comb
	 begin: orig_go
		if(DistX_orig >=0 && DistX_orig <135 && DistY_orig >=0 && DistY_orig <80 && screen_on)
			orig_on = 1'b1;
		else
			orig_on = 1'b0;
	 end
	  
    always_comb
    begin:RGB_Display
	 
		  Red = 8'h00;
		  Green = 8'h00;
		  Blue = 8'h00;
		  screen_on =1'b0;
					
			if (background[DrawY][DrawX +: 4] == 4'h0)
			begin
					 Red = 8'h00;
					 Green = 8'h00;
					 Blue = 8'h00;
					 screen_on =1'b1;
			end
			
		  if((filtered_on==1'b1)&& screen_on)
		  begin
					if(filtered[DistY_ball][DistX_ball]==1'b0)
					begin
						Red = 8'h00;
						Green = 8'h00;
						Blue = 8'hff;
					end
					else
					begin
						Red = 8'hff;
						Green = 8'hff;
						Blue = 8'h00;				
					end			  
		  end
		  
		
end
endmodule
