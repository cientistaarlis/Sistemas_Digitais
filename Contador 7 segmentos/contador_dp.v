module contador_dp(
    input wire clock,
    input wire reset,
    output wire [7:0] saida_display,
    output reg [3:0] cont,
    output reg dp
);


    // Instância do display (Utilizo o bloco do display7.v)
    display7 uut_display7 (.entrada(cont), .segmentoDP(dp), .out(saida_display));


    always @(posedge clock or negedge reset) //bloco always executado a cada borda de subida do clock ou borda de descida do reset. 
                                            // Logica Sequencial(clock), uso o não-bloqueante(<=)
    begin
        if (!reset) //quando reset= 0, zera a contagem e dp=0
            begin
                cont <= 4'b0;
                dp <= 1'b0;
            end 
        else  //reset = 1
            begin
        
                if (cont == 4'hF)  
                    begin
                        cont <= 4'b0; //zera a contagem
                        dp <= ~dp; // inverto do dp
                    end 
                else 
                    begin
                        cont <= cont + 1;
                    end
            end
    end

endmodule
