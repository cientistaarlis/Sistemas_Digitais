// ==========================================
// Arquivo: tb_mult2.v
// Módulo: tb_mult
// Tipo: Testbench
//
// Descrição: Testbench utilizado para verificar o funcionamento do módulo multiplicador parametrizado (mult2). 
// Aplica diferentes combinações de entradas e monitora o resultado da multiplicação na saída.
//
// Autor: Dhene Arlis
// ==========================================


`timescale 1ns/10ps

module tb_mult;
    parameter TAMANHO = 3;
    reg [TAMANHO-1:0] y;
    reg [TAMANHO-1:0] z;
    wire [(2*TAMANHO)-1:0] saida;
	
    mult2  #(.tamanho(TAMANHO))  multiplicar (.a(y), .b(z),.x(saida));

  	initial begin
    
        $dumpfile("tb_mult2.vcd");
        $dumpvars(0,tb_mult);  
        $monitor("y: %b, y em decimal: %d , z: %b, z em decimal:%d, | saida:%b, saida em decimal:%d", y,y,z,z, saida,saida); 
        
        // Coloco os estimulos
        z=3'b000; y=3'b000;
      
        #5 z=3'b001; y=3'b001;
        #10 z=3'b001; y=3'b010;
        #10 z=3'b001; y=3'b100;
        #10 z=3'b010; y=3'b010;
        #10 z=3'b011; y=3'b100;
        #15 z=3'b011; y=3'b010;
        

    end;  
  
endmodule;
