/**
Módulo de um circuito comparador de 2 bits utilizando descrição por
fluxo de dados. Especificações:
• Duas entradas de dois bits
• Uma saída de um bit
• Saída igual a “1” quando as duas entradas forem exatamente iguais
• Saída igual a “0” quando as entradas forem diferentes
**/

module comparador(
	input wire [1:0] bit1,
	input wire [1:0] bit2,
	output wire saida
);


	assign saida = (bit1 == bit2) ? 1'b1 : 1'b0; // se bit1 for igual ao bit2 a saída é 1 


endmodule

