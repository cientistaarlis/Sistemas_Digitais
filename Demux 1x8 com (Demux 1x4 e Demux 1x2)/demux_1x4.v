/*
Descrição estrutural de um demultiplexador 1x4
*/

module demux_1x4(

	//Entrada demultiplexador_1x4: 1 entrada e 4 saidas

	input wire entrada, 
	output wire [3:0] saida,
	
	// A seleção é efetuada por 2 bits, pois a saida tem 4 bits(2^N)
	input wire [1:0] sel
	
);
	//Declaração dos fios para os sinais invertidos
   wire [1:0]not_sel;
	


	//Comportamento Estrutural

	not I1 (not_sel[0], sel[0]);
	not I2 (not_sel[1], sel[1]);
	
	and I3 (saida[0],entrada, not_sel[1], not_sel[0]); //saida[0] = entrada & ~sel[1] & ~sel[0]
	and I4 (saida[1],entrada, not_sel[1], sel[0]); //saida[1] = entrada & ~sel[1] & sel[0]
	and I5 (saida[2],entrada,sel[1], not_sel[0]); //saida[2] = entrada & sel[1] & ~sel[0]
	and I6 (saida[3],entrada, sel[1], sel[0]); //saida[3] = entrada & sel[1] & sel[0]
	
endmodule
