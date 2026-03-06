// ==========================================
// Módulo: mux
//
// Descrição:
// Implementa uma lógica condicional que determina o valor
// da saída com base na comparação do vetor f e no sinal
// de controle ctrl.
//
// Lógica implementada:
// - Se f < 4'b0110 → d = a & b
// - Se f >= 4'b0110 e ctrl = 1 → d = 0
// - Caso contrário → d = c
//
// Autor: Dhene Arlis
// ==========================================

module mux(
    //Declaração de Portas
    input wire a,
    input wire b,
    input wire [3:0] f,
    input wire c,
    input wire ctrl,
    output reg d
);
    always @(*) 
        begin
            if (f < 4'b0110)
                d = a & b;  
            
            else if (ctrl == 1)
                d = 1'b0;    
            
            else
                d = c;

        end

endmodule
