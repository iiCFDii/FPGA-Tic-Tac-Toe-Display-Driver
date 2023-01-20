`timescale 1ns/1ns
module FilterTestBench();
		logic clk = 1'b0;
		logic KEY,resetG,turn,p1,p2;
		logic [17:0] p;
		logic [8:0] s;
		logic [3:0] win1,win2;
		logic [0:134] Filter [0:79];

	// DUT signals

	// Connect device to test
	outshape call0( .clk(clk), .s(s), .p(p), .p1(p1), .p2(p2), .resetG(resetG), .turn(turn), .KEY(KEY), .win1(win1), .win2(win2), .Filter(Filter) );


	always #50 clk <= ~clk;

	task TestCase (logic [8:0] inS, logic inT);
		 @(negedge clk);
		 s <= inS;
		 turn <= inT;

		@(posedge clk);
		$display("Switch: %b", inS, "  Turn  is: %b ", inT, "Grid looks like  is: ");
		for(int i = 0; i < 80; i++)
		begin
		$display("%b",Filter[i]);
	end



endtask




logic temp1;
logic [8:0]  temp2;
		initial
		begin

		$display("Direct Testing: Board State and Reset");
		TestCase(9'b100000000,1'b0);
		TestCase(9'b010000000,1'b0);
		TestCase(9'b001000000,1'b0);
		TestCase(9'b000100000,1'b0);
		TestCase(9'b000010000,1'b0);
		TestCase(9'b000001000,1'b0);
		TestCase(9'b000000100,1'b0);
		TestCase(9'b000000010,1'b0);
		TestCase(9'b000000001,1'b0);

		TestCase(9'b000000001,1'b0);

		TestCase(9'b100000000,1'b1);
		TestCase(9'b010000000,1'b1);
		TestCase(9'b001000000,1'b1);
		TestCase(9'b000100000,1'b1);
		TestCase(9'b000010000,1'b1);
		TestCase(9'b000001000,1'b1);
		TestCase(9'b000000100,1'b1);
		TestCase(9'b000000010,1'b1);
		TestCase(9'b000000001,1'b1);

		TestCase(9'b000000001,1'b0);




		$display("Random Testing:");

		repeat(9)
		begin
			temp1 = $urandom_range(0,1);
			temp2 = $urandom_range(0,510);
		TestCase(temp2,temp1);
		TestCase(temp2,temp1);
		end








		end
endmodule
