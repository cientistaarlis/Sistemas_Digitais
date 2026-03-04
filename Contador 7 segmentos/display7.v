module display7(
    input wire [3:0] entrada,
    input wire segmentoDP,
    output reg [7:0] out
);
    always @(*) // Logica Combinacional, uso o bloqueante(=)
    begin
        case(entrada)
            //catodo comum out[7:0] =[DP,A,B,C,D,E,F,G], DP=x(definido pela entrada)

                4'h0: out[6:0] = 7'b 1111110;  // G=0 
                4'h1: out[6:0] = 7'b 0110000;   // B=1, C=1
                4'h2: out[6:0] = 7'b 1101101;   // C=0,F=0, demais são 1
                4'h3: out[6:0] = 7'b 1111001;   // F=0, E=0 , demais sao 1
                4'h4: out[6:0] = 7'b 0110011;   // F=1, G=1,B=1,C=1 
                4'h5: out[6:0] = 7'b 1011011;   // A=1,F=1,G=1,C=1,D=1
                4'h6: out[6:0] = 7'b 1011111;  // B=0
                4'h7: out[6:0] = 7'b 1110000;   // A=1, B=1, C=1
                4'h8: out[6:0] = 7'b 1111111;   // todos=1
                4'h9: out[6:0] = 7'b 1111011;   // E=0
                4'hA: out[6:0] = 7'b 1110111;   // D=0
                4'hB: out[6:0] = 7'b 0011111;   // A=0,B=0
                4'hC: out[6:0] = 7'b 1001110;   // B=0, C=0, G=0
                4'hD: out[6:0] = 7'b 0111101;   // A=0, F=0
                4'hE: out[6:0] = 7'b 1001111;   // B=0,C=0
                4'hF: out[6:0] = 7'b 1000111;  // A=1,F=1,E=1,G=1 
        
            default: out[6:0] = 7'b 0000000;   //todos segmentos apagados    
        endcase

        out[7] = segmentoDP; 
    end
endmodule
