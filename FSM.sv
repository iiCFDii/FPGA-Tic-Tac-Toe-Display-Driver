module FSM ( input logic E , input logic clk,
                        output logic z);

					typedef enum logic [1:0] {idle,C} Statetype;
					
					Statetype presentState = idle,nextState = idle;
					
					always_ff @(posedge clk)
					begin
						presentState <= nextState;
						
						end
						
					always_comb
					begin
						case(presentState) 
						
					
									
									
						idle:	if (E == 1'b1)
									nextState <= C;
								
								else
									nextState <= idle;
									
						C: if (E == 1'b1)
									nextState <= idle;
								
								else
									nextState <= C;
							
							
								
					
						
						default: nextState <= idle;
						
					endcase
					end
					
					
					always_comb
					begin
						if (presentState == idle) 
						begin
							z <= 1'b0;
							end
							
						else if (presentState == C)
						begin
							z <= 1'b1;
							end
							
						else
						begin
							z <= 1'b0;
							end
						
						end
		endmodule
							
				
				
				