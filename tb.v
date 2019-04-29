`timescale 1 ns / 1 ps

module tb(
);
reg clk=0;
reg resetn=0;
reg[4:0] select=0;
wire [15:0]register_value;
 picorv32 uut(
.clk(clk),
.resetn(resetn),
.select(select),
.register_value(register_value));



	always #5 clk = ~clk;

	initial begin
	#100;
	resetn=1;
	#500;
	select=1;
	#10;
	select=2;
    #10;
    select=3;
    #10;
    select=4;
    #10;
    select=5;
    #10;
    select=3;
  

	end

	//wire mem_valid;
	//wire mem_instr;
endmodule

