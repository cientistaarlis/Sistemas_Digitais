`timescale 1ns/1ps

module tb_full_adder;
    reg a;
    reg b;
    reg cin;
    wire sum;
    wire carry_out;

    full_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .carry_out(carry_out));

    initial
    begin
        $dumpfile("full_adder.vcd");
        $dumpvars(0,tb_full_adder);
        $monitor("Tempo:%2d , a:%b, b:%b, cin:%b, sum:%b, carry_out:%b",$time,a,b,cin,sum,carry_out );

        //Simulação de acordo com a Tabela Verdade
        
        a=1'b0; b=1'b0; cin=1'b0;
        #5; 
        a=1'b0; b=1'b0; cin=1'b1;
        #5;
        a=1'b0; b=1'b1; cin=1'b0;
        #5;
        a=1'b0; b=1'b1; cin=1'b1;
        #5;
        a=1'b1; b=1'b0; cin=1'b0;
        #5;
        a=1'b1; b=1'b0; cin=1'b1;
        #5;
        a=1'b1; b=1'b1; cin=1'b0;
        #5;
        a=1'b1; b=1'b1; cin=1'b1;

        #5; $finish;
    end

endmodule
