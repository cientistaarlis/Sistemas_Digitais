/*
Demultiplexador 1x8 a partir dos demux_1x2 e demux_1x4.
*/

module demux_1x8(

	//Entrada demultiplexador_1x4: 1 entrada e 8 saidas
	input wire entrada, 

	// A seleção é efetuada por 3 bits, pois a saida tem 8 bits(2^N)
	input wire [2:0] sel,
	
	output wire [7:0] saida
	
);
   // Fios para conectar demux_1x2 aos demux_1x4
   wire [1:0] saida_demux1x2;

   // Instância do demux_1x2 (sel[2] é o bit mais significativo)
   demux_1x2 demux_principal (.entrada(entrada), .sel(sel[2]), .saida(saida_demux1x2) );

    // Instância do primeiro demux_1x4 (para saida[3:0])
    demux_1x4 demux_segundo0 ( .entrada(saida_demux1x2[0]), .sel(sel[1:0]), .saida(saida[3:0]));

    // Instância do segundo demux_1x4 (para saida[7:4])
    demux_1x4 demux_segundo1 (.entrada(saida_demux1x2[1]), .sel(sel[1:0]), .saida(saida[7:4]) );

endmodule	

