module tb_codificador16x4;

   reg [15:0] binario; //entrada

   wire [3:0] saida; // Saída


   // Instancia o módulo codificador
   codificador16x4 uut (.binario(binario), .saida(saida) );

   initial 
		begin
        // Inicializa o sinal
        binario = 16'b0000000000000000;


        //#10; binario = 16'b0000000000000000; //Nenhum bit ativo

        #10; binario = 16'b0000000000000001; //Bit 0 ativo

        #10; binario = 16'b0000000000001000; //Bit 3 ativo

        
        #10; binario = 16'b0000000100000000; //Bit 7 ativo

        
        #10; binario = 16'b0000010000000000; //Bit 10 ativo

        
        #10; binario = 16'b1000000000000000; //Bit 15 ativo (prioridade máxima)

        
        #10; binario = 16'b0001000010000001; // Vários bits ativos — deve prevalecer o de maior prioridade

        
        #10; binario = 16'b1111111111111111;//Todos ativos — deve prevalecer o bit 15

        // Fim da simulação
        #10; $stop;
    end

endmodule
