// ==========================================
// Module: Inverter (NOT Gate)
// Description: Módulo Inversor (ou porta lógica NOT)
// Author: Dhene Arlis
// ==========================================

## 💻 Código Verilog

module inverter (
    input  wire a,   // Input signal
    output wire b    // Inverted output
);

    assign b = ~a;

endmodule

