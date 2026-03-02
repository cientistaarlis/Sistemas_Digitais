// ==========================================
// Module: Full Adder
// Description: Implementação de um somador completo (full adder) de 1 bit. Soma as entradas a, b e cin, gerando sum (XOR) e carry_out.
// Author: Dhene Arlis
// ==========================================


module full_adder(
    input wire a,
    input wire b,
    input wire cin,
    output reg sum,
    output reg carry_out

);

    always @(a or b or cin)
        begin
            sum = a ^ b ^ cin;
            carry_out = (a & b) | (cin & (a ^ b));
        end
endmodule

