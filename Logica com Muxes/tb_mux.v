`timescale 1ns/1ps

module tb_mux;

    reg x;
    reg y;
    reg [3:0] z;
    reg w;
    reg controle_ctlr;
    wire saida;


    mux uut (.a(x), .b(y), .f(z), .c(w), .ctrl(controle_ctlr), .d(saida) );


    initial 
        begin
            $dumpfile("tb_mux.vcd");
            $dumpvars(0,tb_mux);
            $monitor("$tempo:%3d, f:%b, a:%b, b:%b, c:%d, ctlr:%d, d:%d ", $time, z , x, y, w, controle_ctlr, saida);
            
            // Estímulos 
            
            $display("CASO 1: Testando a caso,que o (4'b0010), f < menor que 4'b0110 , logo a saida: d = a & b = 1 & 1 = 1 ");    
            x = 1; y = 1; z = 4'b0010; w = 0; controle_ctlr = 0;  

            #5;
            $display(" ");

            $display("CASO 2: Testando a caso,que o (4'b1010), f >= ,maior que 4'b0110, e ctrl=1, logo a saida: d = 1'b0 ");    
            x = 1; y = 1; z = 4'b1010; w = 1; controle_ctlr = 1;
            
            #5;
            $display(" ");


            $display("CASO 3: Testando a caso,que o (4'b1111), f >= ,maior que 4'b0110, e ctrl=0, logo a saida: d = c = 1");  
            x = 1; y = 1; z = 4'b1111; w = 1; controle_ctlr = 0;
            
            #5;
            $display(" ");

            $display("CASO 4: Testando a caso,que o (4'b1111), f >= ,maior que 4'b0110, e ctrl=0, logo a saida: d = c = 0 ");
            x = 1; y = 1; z = 4'b1111; w = 0; controle_ctlr = 0;
            
            #5;
            $display(" ");
            
            $display("CASO 5: Testando a caso,que o (4'b0001), f < ,menor  4'b0110, logo a saida: d = a & b = 0 & 0 = 0 ");
            x = 0; y = 0; z = 4'b0001; w = 1; controle_ctlr = 0;
            #5;
            $display(" ");
        
            
            $finish;
        end    
endmodule;
