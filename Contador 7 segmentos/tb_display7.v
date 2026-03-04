`timescale 1ns/1ps

module  tb_display7;
    reg [3:0] ent;
    reg pontinho;
    wire [7:0] saida;

    //instanciar
    display7 uut (.entrada(ent), .segmentoDP(pontinho), .out(saida));

    initial 
    begin

        $dumpfile("display7.vcd");
        $dumpvars(0,tb_display7);
        $monitor("$time:%2d, entrada:%h, saida:%b" ,$time, ent, saida);

        ent= 4'h0; pontinho= 1'b1;

       
        #10 ent = 4'h1; pontinho = 1'b1;
        
        // Testando de 0 a F
        #10 ent = 4'h0; 
        #10 ent = 4'h1;
        #10 ent = 4'h2;
        #10 ent = 4'h3;
        #10 ent = 4'h4;
        #10 ent = 4'h5;
        #10 ent = 4'h6;
        #10 ent = 4'h7;
        #10 ent = 4'h8;
        #10 ent = 4'h9;
        #10 ent = 4'hA;
        #10 ent = 4'hB;
        #10 ent = 4'hC;
        #10 ent = 4'hD;
        #10 ent = 4'hE;
        #5 ent = 4'hF;;

    end

endmodule
