// ==========================================
// Module: Test Bench de Inversor em Cascata
// Description: Testbench para dois inversores ligados em série. 
//              Aplica estímulos alternados (0 e 1) na entrada e 
//              monitora as saídas de cada inversor (y1 e y2).
// Author: Dhene Arlis
// ==========================================


`include "inv.v"
`timescale 1ns/1ps

module tb_inv;
    reg a;
    wire y1,y2;

    inv gate_inst1(.b(y1),.a(a));
    inv gate_inst2(.b(y2),.a(y1));

    initial begin
        $dumpfile("inv.vcd");
        $dumpvars(0,tb_inv);
        $monitor("a: %b, y1: %b, y2:%b", a, y1, y2);
        
        a = 1'b0;

        #5 a=1'b1;
        #5 a=1'b0;
        #5 a=1'b1;
        #5 a=1'b0;

        $finish;
    end    

endmodule




