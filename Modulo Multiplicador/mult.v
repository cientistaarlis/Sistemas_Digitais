// ==========================================
// Módulo: mult
// Tipo: Lógica combinacional parametrizada
//
// Descrição:
// Módulo multiplicador parametrizado em Verilog.
// Realiza a multiplicação entre dois vetores de
// entrada (a e b) de tamanho configurável.
//
// Parâmetro:
// tamanho – define a largura dos operandos.
//
// Saída:
// x – resultado da multiplicação (2 * tamanho bits).
//
// Autor: Dhene Arlis
// ==========================================


module mult #(parameter tamanho = 3) //definir constante, caso queira mudar o tamanho, facilita
(	
	//Declaração das Portas
	input wire [tamanho-1:0] a,  //entrada do modulo
  	input wire [tamanho-1:0] b, //entrada do modulo
  	output wire [(2*tamanho)-1:0] x  //saida do modulo - o 2*tamanho, devido a operação de multiplicação
);

	assign x = a*b ; //atribuição continua e multiplicação

endmodule;
