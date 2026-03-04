module tb_conversor_binary_gray;
	reg B3;
	reg B2;
	reg B1;
	reg B0;
	wire G3;
	wire G2;
	wire G1;
	wire G0;
	wire [3:0] saida;
// Instancia

	conversor_binary_gray uut(.B3(B3), .B2(B2), .B1(B1), .B0(B0), .G3(G3), .G2(G2), .G1(G1), .G0(G0), .saida(saida));	
	

initial 
	begin
		
		// Estimulos
		B3=1'b0; B2=1'b0; B1=1'b0; B0=1'b0;
		#5;
		B3=1'b0; B2=1'b0; B1=1'b0; B0=1'b1;
		#5;
		B3=1'b0; B2=1'b0; B1=1'b1; B0=1'b0;
		#5;
		B3=1'b0; B2=1'b0; B1=1'b1; B0=1'b1;
		#5;
		B3=1'b0; B2=1'b1; B1=1'b0; B0=1'b0;
		#5;
		B3=1'b0; B2=1'b1; B1=1'b0; B0=1'b1;
		#5;
		B3=1'b0; B2=1'b1; B1=1'b1; B0=1'b0;
		#5;
		B3=1'b0; B2=1'b1; B1=1'b1; B0=1'b1;
		#5;
		B3=1'b1; B2=1'b0; B1=1'b0; B0=1'b0;
		#5;
		B3=1'b1; B2=1'b0; B1=1'b0; B0=1'b1;
		#5;
		B3=1'b1; B2=1'b0; B1=1'b1; B0=1'b0;
		#5;
		B3=1'b1; B2=1'b0; B1=1'b1; B0=1'b1;
		#5;
		B3=1'b1; B2=1'b1; B1=1'b0; B0=1'b0;
		#5;
		B3=1'b1; B2=1'b1; B1=1'b0; B0=1'b1;
		#5;
		B3=1'b1; B2=1'b1; B1=1'b1; B0=1'b0;
		#5;
		B3=1'b1; B2=1'b1; B1=1'b1; B0=1'b1;
		#5;
		
		
	end
	
	
	
	
endmodule
