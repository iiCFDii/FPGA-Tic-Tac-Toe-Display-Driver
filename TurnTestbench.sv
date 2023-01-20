`timescale 1ns/1ns
module TurnTestbench();
		logic clk = 1'b0;
		logic turn;
		logic reset;
		logic p1,p2;
		logic [17:0] p;
		logic [8:0] s;
	// DUT signals

	// Connect device to test
	turn call0( .clk(clk), .s(s), .p(p), .p1(p1), .p2(p2), .reset(reset), .turn(turn) );


	always #50 clk <= ~clk;

	task TestCase (logic [8:0] inS, logic inT, logic inR);
		 @(negedge clk);
		 s <= inS;
		 turn <= inT;
		 reset <= inR;

		@(posedge clk);
		$display("Switch: %b", inS, "  Turn  is: %b ", inT, "P is: %b",p , " Reset is: %b", inR);



endtask

task winCase (logic [8:0] inS, logic inT, logic inR);
	 @(negedge clk);
	 s <= inS;
	 turn <= inT;
	 reset <= inR;

	@(posedge clk);
	$display("Switch: %b", inS, "  Turn  is: %b ", inT, "P is: %b",p , " Player1 Win: %b", p1, " Player2 Win: %b", p2);



endtask

logic temp1;
logic [8:0]  temp2;
		initial
		begin

		$display("Direct Testing: Board State and Reset");
		TestCase(9'b100000000,1'b0,1'b0);
		TestCase(9'b010000000,1'b0,1'b0);
		TestCase(9'b001000000,1'b0,1'b0);
		TestCase(9'b000100000,1'b0,1'b0);
		TestCase(9'b000010000,1'b0,1'b0);
		TestCase(9'b000001000,1'b0,1'b0);
		TestCase(9'b000000100,1'b0,1'b0);
		TestCase(9'b000000010,1'b0,1'b0);
		TestCase(9'b000000001,1'b0,1'b0);

		TestCase(9'b000000001,1'b0,1'b1);

		TestCase(9'b100000000,1'b1,1'b0);
		TestCase(9'b010000000,1'b1,1'b0);
		TestCase(9'b001000000,1'b1,1'b0);
		TestCase(9'b000100000,1'b1,1'b0);
		TestCase(9'b000010000,1'b1,1'b0);
		TestCase(9'b000001000,1'b1,1'b0);
		TestCase(9'b000000100,1'b1,1'b0);
		TestCase(9'b000000010,1'b1,1'b0);
		TestCase(9'b000000001,1'b1,1'b0);

		TestCase(9'b000000001,1'b0,1'b1);


		$display("Direct Testing: Win Condition");

		winCase(9'b111000000,1'b0,1'b0);
		winCase(9'b111000000,1'b0,1'b0);
		winCase(9'b111000000,1'b0,1'b1);

		winCase(9'b111000000,1'b1,1'b0);
		winCase(9'b111000000,1'b1,1'b0);
		winCase(9'b111000000,1'b1,1'b1);

		winCase(9'b000111000,1'b0,1'b0);
		winCase(9'b000111000,1'b0,1'b0);
		winCase(9'b000111000,1'b0,1'b1);


		winCase(9'b000111000,1'b1,1'b0);
		winCase(9'b000111000,1'b1,1'b0);
		winCase(9'b000111000,1'b1,1'b1);



		$display("Random Testing:");

		repeat(9)
		begin
			temp1 = $urandom_range(0,1);
			temp2 = $urandom_range(0,510);
		winCase(temp2,temp1,1'b0);
		winCase(temp2,temp1,1'b1);
		end








		end
endmodule
