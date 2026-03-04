/*
TestBench para o módule Comparador

*/

module tb_comparador;

	reg [1:0] bit1;
	reg [1:0] bit2;
	wire saida;
	
	
	//Instanciação
	
	comparador dut (.bit1(bit1), .bit2(bit2), .saida(saida));
	
	
	initial 
		begin
			
			//Estimulos
			
			
			bit1=2'b00; bit2=2'b00;
			
			#5; 
			bit1=2'b00; bit2=2'b01;
			
			#5; 
			bit1=2'b01; bit2=2'b00;
			
			#5; 
			bit1=2'b01; bit2=2'b01;
			
			#5; 
			bit1=2'b10; bit2=2'b00;
			
			#5; 
			bit1=2'b10; bit2=2'b10;
			
			#5; 
			bit1=2'b10; bit2=2'b11;
			
			#5; 
			bit1=2'b11; bit2=2'b00;
			
			#5; 
			bit1=2'b11; bit2=2'b01;
			
			#5; 
			bit1=2'b11; bit2=2'b11;
			
			#5; 
			bit1=2'b11; bit2=2'b01;
			
		end
		
		
		
endmodule
