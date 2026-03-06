// ==========================================
// Module: operacao
// Description: Unidade lógica e aritmética (ULA) simples
//              Realiza as operações: adição, subtração,
//              OR lógico e AND lógico em vetores de tamanho parametrizável.
// Author: Dhene Arlis
// ==========================================

module operacao #(parameter tamanho =3)
(
    // declaração das portas 
    input wire [tamanho-1:0] a,
    input wire [tamanho-1:0] b,
    output reg [tamanho:0] add, //gera um bit a mais
    output reg [tamanho:0] sub,
    output reg [tamanho-1:0] logico_OR,
    output reg [tamanho-1:0] logico_AND
);

    always @(a or b)
        begin
          add = a + b;  

        end

    always @(a or b)
        begin 
            sub = a - b;
        end
    
    always@(*)
        begin
            logico_OR = a | b;        
        end

    always @(*)
        begin
            logico_AND = a & b;
        end
endmodule;
