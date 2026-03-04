/*
Descrição comportamental de um codificador binário de prioridade (16 para 4).
*/

module codificador16x4(

	input wire [15:0] binario,
	output reg [3:0] saida 

);


	always @(*)
		begin
			casex (binario)
            16'b1xxxxxxxxxxxxxxx: saida = 4'b1111;
            16'b01xxxxxxxxxxxxxx: saida = 4'b1110;
            16'b001xxxxxxxxxxxxx: saida = 4'b1101;
            16'b0001xxxxxxxxxxxx: saida = 4'b1100;
            16'b00001xxxxxxxxxxx: saida = 4'b1011;
            16'b000001xxxxxxxxxx: saida = 4'b1010;
            16'b0000001xxxxxxxxx: saida = 4'b1001;
            16'b00000001xxxxxxxx: saida = 4'b1000;
            16'b000000001xxxxxxx: saida = 4'b0111;
            16'b0000000001xxxxxx: saida = 4'b0110;
            16'b00000000001xxxxx: saida = 4'b0101;
            16'b000000000001xxxx: saida = 4'b0100;
            16'b0000000000001xxx: saida = 4'b0011;
            16'b00000000000001xx: saida = 4'b0010;
            16'b000000000000001x: saida = 4'b0001;
            16'b0000000000000001: saida = 4'b0000;
            
				default: saida = 4'b0000; // Nenhum bit ativo
			endcase
		end

endmodule 
