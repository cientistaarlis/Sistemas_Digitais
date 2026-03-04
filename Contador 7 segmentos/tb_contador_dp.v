`timescale 1ns/1ps

module tb_contador_dp;
    // entradas testbench
    reg clock;
    reg reset;
    // saidas testbench
    wire [7:0] saida_display;
    wire [3:0] cont;
    wire dp;
    
    // Instancia
    contador_dp uut (.clock(clock), .reset(reset), .saida_display(saida_display), .cont(cont), .dp(dp));
    
     // Clock automático, invertendo a cada 5ns
    
    always #5 clock = ~clock;
    
    initial 
        begin
        
        $dumpfile("contador_dp.vcd");
        $dumpvars(0,tb_contador_dp);
        $monitor("$time:%2d, clock:%h, reset:%b, saida_display:%b, contador:%h, dp:%b" ,$time, clock, reset, saida_display, cont, dp);
        $display("");
        $display("   Inicio da Simulacao  ");

        // Inicialização
        clock = 0;
        reset = 0;  // Reset ativo
        
        #10; // Aguardar 10ns
        reset = 1;  // Liberar reset
        
        
        #80;
        
        // Aplicar reset para testar a reinicialização
        reset = 0;
        #20;
        reset = 1;
        
        // Aguardar mais alguns ciclos
        #80;
        
        $display("");
        $display("  Fim da Simulacao ");

        $finish;
        
    end
endmodule
