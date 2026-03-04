`timescale 1ns/1ps

module tb_operacao;
    parameter TAMANHO = 3;
    reg [TAMANHO-1 :0] x;
    reg [TAMANHO-1 :0] y;
    wire [TAMANHO :0]saida_add;
    wire [TAMANHO :0]saida_sub;
    wire [TAMANHO-1 :0]saida_OR;
    wire [TAMANHO-1 :0]saida_AND;

operacao #(.tamanho(TAMANHO))   uut (.a(x), .b(y), .add(saida_add), .sub(saida_sub), .logico_OR(saida_OR), .logico_AND(saida_AND) );


    initial 
    begin
    
        $dumpfile("tb_operacao.vcd");
        $dumpvars(0,tb_operacao);
        $monitor("x:%b, y:%b, add:%b, sub:%b, OR:%b, AND:%b",x,y, saida_add,saida_sub,saida_OR,saida_AND); 
        
        x= 3'b011; y=3'b001;
        #5 x=3'b001; y=3'b001;
        #10 x=3'b001; y=3'b010;
        #10 x=3'b001; y=3'b100;
        #10 x=3'b010; y=3'b010;
        #10 x=3'b011; y=3'b100;
        #15 x=3'b011; y=3'b010;



    end
endmodule
