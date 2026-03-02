// ==========================================
// Module: Inverter (NOT Gate)
// Description: Simple digital inverter
// Author: Dhene Arlis
// ==========================================

## 💻 Código Verilog

module inverter (
    input  wire a,   // Input signal
    output wire b    // Inverted output
);

    assign b = ~a;

endmodule

