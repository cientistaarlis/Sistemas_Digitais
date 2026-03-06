###  🔁 Multiplicador Digital (Versão Behavioral)

Implementação de um multiplicador digital utilizando Verilog HDL com modelagem behavioral (bloco always combinacional).

---

## 📌 Descrição
Este módulo realiza a multiplicação de dois sinais digitais de entrada (y e z), produzindo o resultado na saída saida. 
O projeto é parametrizável, permitindo ajustar a largura dos operandos através do parâmetro tamanho.

---

## 💻 Abordagem de Implementação

Modelagem Behavioral com always combinacional

🔹 Características Técnicas:

• Bloco always combinacional: A saída é recalculada sempre que há mudança nas entradas.

• Parâmetro `tamanho: Define a largura dos operandos (padrão = 3 bits).

• Saída com o dobro de bits: Para acomodar o resultado completo da multiplicação (2*tamanho bits).

• Circuito puramente combinacional: Sem elementos de memória ou clock, garantindo baixa latência.


✅ Vantagens para Hardware

Resposta imediata: Atualização contínua da saída.

Síntese direta: Facilmente implementável em FPGA ou ASIC.

Flexibilidade: Parâmetro ajusta a precisão sem modificar o código.

---

## ⚙️ Testbench

O testbench (tb_mult.v) instancia o módulo mult2 e aplica diversos estímulos de entrada para verificar a funcionalidade:

Estímulos com diferentes combinações de valores para y e z.

Monitoramento contínuo da saída via $monitor.

Geração de arquivo VCD (tb_mult2.vcd) para visualização de formas de onda.

A simulação pode ser realizada em qualquer simulador Verilog (Icarus Verilog, ModelSim, Quartus, etc.)


## 🚀 Simulação com Icarus Verilog e GTKWave

Para simular o módulo Multiplicador:

´´´ bash
# Compilar módulo + testbench (gera o .vvp)
iverilog -o tb_mult.vvp mult.v tb_mult.v

# Executar simulação (usa o .vvp gerado)
vvp tb_mult.vvp

# Visualizar forma de onda
gtkwave tb_mult.vcd
```
