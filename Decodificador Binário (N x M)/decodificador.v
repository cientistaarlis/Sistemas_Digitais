/*
Elabore uma descrição parametrizável de um decodificador binário simples com N bits
de entrada e M bits de saída. Simule N=4.
*/


module decodificador #(parameter N = 4)
(
	input wire [N-1:0] entrada,
	output wire [( 1 << N) -1 :0] saida //deslocamento a esquerda,exponenciação (2 ^ N)

 );
 
	assign saida = (1 << entrada); 
	/* 
	Como funciona o assign:
	entrada = 4'b0000; saida = 16'b 0000_0000_0000_0001
	entrada = 4'b0010; saida = 16'b 0000_0000_0000_0010		
	*/

endmodule
