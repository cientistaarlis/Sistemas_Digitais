module mux(
    //Declaração de Portas
    input wire a,
    input wire b,
    input wire [3:0] f,
    input wire c,
    input wire ctrl,
    output reg d
);
    always @(*) 
        begin
            if (f < 4'b0110)
                d = a & b;  
            
            else if (ctrl == 1)
                d = 1'b0;    
            
            else
                d = c;

        end

endmodule
