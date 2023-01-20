`timescale 1ns/1ns
module FSMtestbench();
		logic clk = 1'b0;
		logic E;
		logic z;
	// DUT signals

	// Connect device to test
	FSM call0( .clk(clk), .z(z), .E(E) );


	always #50 clk <= ~clk;

	task TestCase (logic inE, logic inZ);
		repeat(5) @(negedge clk);
		 E <= inE;

		@(posedge clk);
		assert(z == inZ )

		$display("State is now, Z: %b", z, "  Button is: %b", E);


		else

		$display("Something went wrong!");


endtask


		initial
		begin

		$display("Direct Testing:");
		TestCase(1'b1,1'b0);
		TestCase(1'b0,1'b1);
		TestCase(1'b1,1'b0);
		TestCase(1'b0,1'b1);


		end
endmodule
