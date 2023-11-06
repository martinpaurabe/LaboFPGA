module ejem1(
		input CLOCK_50,
		input [3:0] SW,
		input [1:0] KEY,
		output [7:0] LED );
		
reg [7:0] out;
		
initial
begin
out <= 0;
end
		
assign LED[0] = out[0];
assign LED[1] = out[1];

subejem subejem_inst1(.clk(CLOCK_50),.subsw(SW[0]),.led(LED[2]));
subejem subejem_inst2(.clk(CLOCK_50),.subsw(SW[1]),.led(LED[3]));
		
always @(posedge CLOCK_50)
begin
out[0] <= KEY[0];
out[1] <= ~KEY[1];
end

endmodule 