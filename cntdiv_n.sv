module cntdiv_n #(BITS = 4) (clk, rst, tick);
	input logic clk, rst;
	output logic tick;
	
	// counter register
	reg [BITS - 1 : 0] rCounter;

	// increment or reset the counter
	always @(posedge clk, posedge rst) begin
		if (rst)
			rCounter <= 0;
		else
			rCounter <= rCounter + 1;
	end		

// the value of clk_out changes every (2**BITS)/2 clk cycles
assign tick = (rCounter == 2 ** (BITS - 1)) ? 1'b1 : 1'b0;
endmodule			

