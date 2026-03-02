## ⚙️ Testbench

O testbench abaixo instancia o módulo `inversor` e aplica estímulos de entrada para verificar a funcionalidade do inversor: entrada alternada entre 0 e 1,
com checagem automática da saída esperada, monitorando a saída para garantir que o circuito se comporta conforme a tabela verdade.
    A simulação pode ser realizada em qualquer simulador Verilog (Icarus Verilog, ModelSim, Quartus, etc.).


//`include "inv.v"
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




