/*
Módulo de Conversor de Código Binario pra Código Gray

Implementação por Fluxo de Dados: Fluxo de Dados
*/


module conversor_binary_gray(
	input wire B3,B2,B1,B0,
	output wire G3,G2,G1,G0,
	output wire [3:0] saida
);



	assign G3 = B3;
	assign G2 = B3 ^ B2;
	assign G1 = B2 ^ B1;
	assign G0 = B1 ^ B0;
	
	assign saida = {G3,G2,G1,G0};

endmodule
