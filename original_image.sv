module shape (output [134:0] original [0:79]
				  );

logic [134:0] inputImage [0:79] = '{   		  
																	135'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110111111111111111111111111110,
																	135'b111111111111111111111111110111111111111111111111111110111111111111111111111111110000000000000000000000000000000000000000000000000000000

														  };
														  
						  
assign original = inputImage;
			  
endmodule

