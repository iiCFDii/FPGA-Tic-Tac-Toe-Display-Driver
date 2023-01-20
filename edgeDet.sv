module edgeDet(input logic clk,push,
											output logic edgeD);
						
	
											
						logic ff1,ff2,ff3;
						always_ff	@(posedge clk) 
						begin
						
						ff1 <= push;
						ff2 <= ff1;
						ff3 <= ff2;
						
						end
						
					assign edgeD = (ff3&&!ff2);
endmodule