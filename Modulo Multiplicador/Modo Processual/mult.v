
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
