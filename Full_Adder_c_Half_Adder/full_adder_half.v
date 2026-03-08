// ======================================================
// Module: Full Adder (using Half Adders)
// Description: Somador completo de 1 bit implementado
//              utilizando dois Half Adders e uma porta OR.
//              
//              Entradas:
//              - a   : primeiro bit de entrada
//              - b   : segundo bit de entrada
//              - cin : carry de entrada
//
//              Saídas:
//              - sum       : resultado da soma
//              - carry_out : carry de saída
//
//              Funcionamento:
//              1. O primeiro Half Adder soma os bits a e b.
//              2. O segundo Half Adder soma o resultado com cin.
//              3. O carry final é obtido pelo OR entre os dois carries.
//
// Author: Dhene Arlis
// ======================================================

module full_adder_half(
    input wire a,
    input wire b,
    input wire cin,
    output wire sum,
    output wire carry_out

);

    // Fios intermediários
    wire sum_1; 
    wire carry_1; 
    wire carry_2;

    half_adder uut1 (.a(a), .b(b), .sum(sum_1), .carry(carry_1) );

    half_adder uut2 (.a(sum_1), .b(cin), .sum(sum), .carry(carry_2) );


    assign carry_out = carry_1 | carry_2;

endmodule
