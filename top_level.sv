module  top_level (		 input  [8:0] s,
								 input 		 Clk,
								 input    	 KEY,
                                     Reset,
												 resetG,
												 turn,
                         output[7:0] Red,
							                Green,
												 Blue,
							    output      VGA_clk,
							                sync,
												 blank,
												 vs,
												 hs,
												 z,
												 p11,p22,
								output [3:0] win1,win2,
								output [17:0]p );

    logic Reset_h, vssig,temp1,temp2,temp3,temp4,oclk;
	 
	 logic [9:0] WinImagexsig,WinImageysig,WinImagesizesig, OverImagexsig,OverImageysig,OverImagesizesig;
    logic [9:0] drawxsig, drawysig;

    assign {Reset_h}=~ (Reset);  // The push buttons are active low
	 
	 
	clockdiv callx(.iclk(Clk), .oclk(oclk));
	 
   vga_controller vgasync_instance(.*, .Clk(Clk), .Reset(Reset_h), .pixel_clk(VGA_clk), .DrawX(drawxsig), .DrawY(drawysig) );
												
	edgeDet call0(.clk(oclk), .push(turn), .edgeD(temp1));
	
	edgeDet call3(.clk(oclk), .push(resetG), .edgeD(temp2));
	 
	FSM call1(.E(temp1), .clk(oclk), .z(z));
		
	turn call2(.clk(oclk),.s(s), .p(p), .turn(z), .reset(temp2), .p1(p11), .p2(p22));
	
	edgeDet call4(.clk(oclk), .push(~p11), .edgeD(temp3));
	
	edgeDet call5(.clk(oclk), .push(~p22), .edgeD(temp4));
	
always_ff @(posedge oclk)begin
	if(temp3 == 1)
	begin
			win1 += 4'b0001; 
	end
	else
	begin
			win1 <= win1;
	end
	
	if(temp4 == 1)
	begin
			win2 += 4'b0001; 
	end
	else
	begin
			win2 <= win2;
	end
end
										
    color_mapper color_instance(.*,.s(s),.KEY(KEY), .DrawX(drawxsig), .DrawY(drawysig), .resetG(resetG), .turn(z), .p(p), .clk(oclk), .p1(p11), .p2(p22), .win1(win1), .win2(win2) );
	
endmodule
