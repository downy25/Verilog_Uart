module tb_uart_tx;
	reg clk;
	reg rst;
	wire tx;
	
	
	uart_tx dut(clk, rst, tx);
	
	initial begin
		clk = 0;
		rst <= 0;
	end
	
	always #20 clk <= ~clk;
	
	initial begin
	#0 rst <= 0;
	#60 rst <= 1;
	#80 rst <= 0;
	#10000 $stop;
	end
endmodule 