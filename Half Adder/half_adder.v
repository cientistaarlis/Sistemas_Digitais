// ==========================================
// Module: Half Adder
// Description: Soma dois bits, produzindo soma (XOR) e carry (AND).
// Author: Dhene Arlis
// ==========================================

## 💻 Código Verilog


module half_adder(
    input wire a,
    input wire b,
    output wire sum,
    output wire carry
);

    assign sum = a ^ b;
    assign carry = a & b; 
    
endmodule
