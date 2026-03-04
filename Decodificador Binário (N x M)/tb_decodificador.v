/* TestBench do decodificador binário simples com N bits de entrada e M bits de saída.
*/


module tb_decodificador;
	parameter N=4;
	reg [N-1:0] entrada;
	wire [( 1 << N) -1 :0] saida; //deslocamento a esquerda,exponenciação (2 ^ N)

 
 
// Instanciar
	decodificador #(4) uut(.entrada(entrada), .saida(saida));
	
	
	
//Estimulos	
	initial
		begin
			entrada=4'b0000;
			#5;
			entrada=4'b0001;
			#5;
			entrada=4'b0010;
			#5;
			entrada=4'b0100;
			#5;
			entrada=4'b1000;
			#5;
			entrada=4'b1010;
			#5;
			entrada=4'b0101;
			#5;
			entrada=4'b0010;
		end
endmodule
