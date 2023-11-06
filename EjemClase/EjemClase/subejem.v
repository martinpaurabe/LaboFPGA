module subejem(
			input clk,
			input subsw,
			output led);
			
reg out;

assign led = out;

always @(posedge clk)
out <= subsw;

endmodule 