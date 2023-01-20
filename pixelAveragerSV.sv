

module pixelAveragerSV(
	input 	logic original, A, B, C, D, E, F, G, H,
	output 	logic Y
);

logic [3:0] X;
always_comb
begin
  X = A + B + C + D + E + F + G + H;
  if (X == 4)
    begin
      Y <= original;
    end
  else if (X > 4)
    begin
      Y <= logic'(1);
    end
  else
    begin
      Y <= logic'(0);
    end
end

endmodule