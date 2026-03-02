// ==========================================
// Module: Full Adder
// Description: Soma dois bits, produzindo soma (XOR) e carry (AND).
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

