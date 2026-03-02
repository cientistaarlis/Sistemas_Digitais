`timescale 1ns / 1ps

module tb_full_adder_half;

    // entradas 
    reg  tb_a;
    reg  tb_b;
    reg  tb_cin;

    // saídas
    wire tb_sum;
    wire tb_carry_out;

    // Instanciação do DUT (Device Under Test)
    full_adder_half uut ( .a(tb_a), .b(tb_b), .cin(tb_cin), .sum(tb_sum), .carry_out(tb_carry_out) );


    
    initial 
        begin
            $display(" Testbench para Full Adder com Half Adder ");
        
            $dumpfile("full_adder_half.vcd");
            $dumpvars(0, tb_full_adder_half);
            $monitor("Tempo= %2d | Entradas: a=%b, b=%b, cin=%b | Saidas: Carry=%b, Sum=%b", $time, tb_a, tb_b, tb_cin, tb_carry_out, tb_sum);
        
            // Inicializando todas as entradas
            tb_a = 1'b0; tb_b = 1'b0; tb_cin = 1'b0;
            
            #10;
            
            // Caso 0: 0 + 0 + 0 = 00 (S=0, C=0)
            tb_a=1'b0; tb_b=1'b0; tb_cin=1'b0; 
            
            #10;

            // Caso 1: 0 + 0 + 1 = 01 (S=1, C=0)
            tb_a=1'b0; tb_b=1'b0; tb_cin=1'b1; 
            
            #10;

            // Caso 2: 0 + 1 + 0 = 01 (S=1, C=0)
            tb_a=1'b0; tb_b=1'b1; tb_cin=1'b0; 
            
            #10;

            // Caso 3: 0 + 1 + 1 = 10 (S=0, C=1)
            tb_a=1'b0; tb_b=1'b1; tb_cin=1'b1; 
            
            #10;

            // Caso 4: 1 + 0 + 0 = 01 (S=1, C=0)
            tb_a=1'b1; tb_b=1'b0; tb_cin=1'b0; 
            
            #10;

            // Caso 5: 1 + 0 + 1 = 10 (S=0, C=1)
            tb_a=1'b1; tb_b=1'b0; tb_cin=1'b1; 
            
            #10;

            // Caso 6: 1 + 1 + 0 = 10 (S=0, C=1)
            tb_a=1'b1; tb_b=1'b1; tb_cin=1'b0; 
            
            #10;

            // Caso 7: 1 + 1 + 1 = 11 (S=1, C=1)
            tb_a=1'b1; tb_b=1'b1; tb_cin=1'b1; 
            
            #10;


            $display("Simulacao concluida.");
            $finish;
    end

endmodule
