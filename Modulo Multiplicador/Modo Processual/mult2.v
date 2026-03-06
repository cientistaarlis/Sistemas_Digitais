// ==========================================
// Arquivo: mult2.v
// Módulo: mult2
// Tipo: Lógica combinacional parametrizada
//
// Descrição:
// Multiplicador parametrizado implementado com bloco procedural (always). 
// Realiza a multiplicação entre dois vetores de entrada de tamanho configurável.
//
// Parâmetro:
// tamanho – define a largura dos operandos.
//
// Saída:
// x – resultado da multiplicação (2 * tamanho bits).
//
// Autor: Dhene Arlis
// ==========================================


module mult2 #(parameter tamanho = 3)//definir constante, caso queira mudar o tamanho, facilita
(	
	//Declaração das Portas
	input wire [tamanho-1:0] a,  //entrada do modulo
  	input wire [tamanho-1:0] b, //entrada do modulo
  	output reg [(2*tamanho)-1:0] x  //saida do modulo - o 2*tamanho, devido a operação de multiplicação
);

	always @(*)
		begin
			x = a * b ; //atribuição processual e multiplicação
		end	
endmodule;
