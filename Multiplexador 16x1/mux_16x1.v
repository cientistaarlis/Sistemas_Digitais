// ==========================================
// Module: mux_16x1
// Description: Multiplexador 16x1 comportamental
//              Seleciona um dos 16 bits de entrada baseado no sinal de seleção.
// Author: Dhene Arlis
// ==========================================


/* Descrição comportamental de um multiplexador 16x1 */

module mux_16x1(
	input wire [15:0] entrada,	
	input wire [3:0] sel,
	output reg saida
);

	always @(*)
		begin
			case(sel)
			4'b0000: saida=entrada[0];
			4'b0001:	saida=entrada[1];
			4'b0010: saida=entrada[2];
			4'b0011: saida=entrada[3];
			4'b0100: saida=entrada[4];
			4'b0101: saida=entrada[5];
			4'b0110: saida=entrada[6];
			4'b0111: saida=entrada[7];
			4'b1000: saida=entrada[8];
			4'b1001: saida=entrada[9];
			4'b1010: saida=entrada[10];
			4'b1011: saida=entrada[11];
			4'b1100: saida=entrada[12];
			4'b1101: saida=entrada[13];
			4'b1110: saida=entrada[14];
			4'b1111: saida=entrada[15];
			
			default: saida=entrada[0];
			endcase
		end
endmodule
