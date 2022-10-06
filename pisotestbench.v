module piso_output;
	reg [3:0] d;
	reg clk;
	reg mode;
	wire so;
	piso uut (
		.d(d), 
		.clk(clk), 
		.mode(mode), 
		.so(so)
	); 
	initial begin
		forever begin
		clk<=1;
		#50;
		clk<=0;
		#50;
		end
	end 
	initial begin 
	mode=1;  
	d=4'b1001;
	#100;
	mode=0; 
	end
	
 
 endmodule
 