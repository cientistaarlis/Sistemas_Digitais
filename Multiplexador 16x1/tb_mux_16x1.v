// ==========================================
// Module: tb_mux_16x1
// Description: Testbench para o multiplexador 16x1
//              Aplica estímulos sequenciais para verificar a seleção correta.
// Author: Dhene Arlis
// ==========================================

/* Testbench de um multiplexador 16x1 */

module tb_mux_16x1;
	reg [15:0] entrada;	
	reg [3:0] sel;
	wire saida;

	//Instancia
	mux_16x1 uut(.entrada(entrada), .sel(sel), .saida(saida));
	
	initial
		begin
			sel= 4'b0000; entrada= 16'b0000_0000_0000_0000; #5;
			sel= 4'b0001; entrada= 16'b0000_0000_0000_0001; #5; 
			sel= 4'b0010; entrada= 16'b0000_0000_0000_0010; #5; 
			sel= 4'b0011; entrada= 16'b0000_0000_0000_0100; #5;
			sel= 4'b0100; entrada= 16'b0000_0000_0000_1000; #5;
			sel= 4'b0101; entrada= 16'b0000_0000_0001_0000; #5;
			sel= 4'b0110; entrada= 16'b0000_0000_0010_0000; #5;
			sel= 4'b0111; entrada= 16'b0000_0000_0100_0000; #5;
			sel= 4'b1000; entrada= 16'b0000_0000_1000_0000; #5;
 			sel= 4'b1001; entrada= 16'b0000_0001_0000_0000; #5;
			sel= 4'b1010; entrada= 16'b0000_0100_0000_0000; #5;
			sel= 4'b1011; entrada= 16'b0000_1000_0000_0000; #5;
			sel= 4'b1100; entrada= 16'b0001_0000_0000_0000; #5;
			sel= 4'b1101; entrada= 16'b0010_0000_0000_0000; #5;
			sel= 4'b1110; entrada= 16'b0100_0000_0000_0000; #5;
			sel= 4'b1111; entrada= 16'b1000_0000_0000_0000; #5;
		end
endmodule
