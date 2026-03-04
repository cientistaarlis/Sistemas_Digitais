
/*
Descrição estrutural de um demultiplexador 1x2
*/

module demux_1x2(

	//Entrada demultiplexador_1x2: 1 entrada e 2 saidas

	input wire entrada, 
	output wire [1:0] saida,
	
	// A seleção é efetuada por 1 bits, pois a saida tem 2 bits(2^N)
	input wire sel
	
);
	//Declaração dos fios para os sinais invertidos
   wire not_sel;
	


	//Comportamento Estrutural

	not I1 (not_sel, sel);
	
	and I2 (saida[0],entrada, not_sel); 	//saida[0] = ( entrada &  ~sel)
	and I3 (saida[1],entrada, sel); 			//saida[1] = ( entrada & sel )
	
	
endmodule
