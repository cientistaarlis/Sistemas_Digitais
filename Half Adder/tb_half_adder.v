// ==========================================
// Module: Test Bench do Half Adder
// Description: Testbench para o half adder. Aplica todas as combinações de entrada (00,01,10,11) e monitora as saídas sum e carry.
// Author: Dhene Arlis
// ==========================================

## 💻 Código Verilog

`timescale 1ns/1ps

module tb_half_adder;
    reg a;
    reg b;
    wire sum;
    wire carry;

    half_adder uut (.a(a), .b(b), .sum(sum), .carry(carry));

    initial 
    begin
        $dumpfile("half_adder.vcd");
        $dumpvars(0,tb_half_adder);
        $monitor("time: %3d, a:%b, b:%b, sum:%b, carry:%b ",$time,a,b,sum,carry );

        a=1'b0; b=1'b0; //Primeira Linha da Tabela verdade
        #5;
        a=1'b0; b=1'b1; //Segunda Linha da Tabela verdade  
        #5;
        a=1'b1; b=1'b0; //Terceira Linha da Tabela verdade
        #5;
        a=1'b1; b=1'b1; //Quarta Linha da Tabela verdade

        #5; $finish;
    end
    
endmodule
