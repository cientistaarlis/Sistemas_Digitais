
# 🔁 Multiplexador Condicional em Verilog

Implementação de uma lógica de seleção utilizando Verilog HDL, combinando operação lógica, comparação e controle condicional.

---

## 📌 Descrição
Este módulo implementa uma lógica semelhante a um multiplexador condicional, onde a saída depende de:

Comparação entre o valor de f e 4'b0110

 Um sinal de controle ctrl

Entradas lógicas a, b e c

A lógica funciona da seguinte forma:

Se f < 4'b0110
→ saída d = a & b

Caso contrário, se ctrl = 1
→ saída d = 0

Caso contrário
→ saída d = c

Esse tipo de estrutura é comum em lógica combinacional de decisão em circuitos digitais.

---
## 🔌 Diagrama Lógico

Representação da porta lógica NOT.

  <img src="simbologia.png" width="150"/>
</p>

---

## 🧠 Tabela Verdade da Porta Inversora

| Entrada (a) | Saída (b) |
|------------|----------|
| 0          | 1        |
| 1          | 0        |

---

## ⚙️ Testbench

O testbench instancia o módulo `inversor` e aplica estímulos de entrada para verificar a funcionalidade do inversor: entrada alternada entre 0 e 1,
com checagem automática da saída esperada, monitorando a saída para garantir que o circuito se comporta conforme a tabela verdade.

A simulação pode ser realizada em qualquer simulador Verilog (Icarus Verilog, ModelSim, Quartus, etc.)

---

## 🚀 Simulação com Icarus Verilog e GTKWave

Para simular o módulo Inversor:

```bash
# Compilar módulo + testbench
iverilog -o tb_inv.vvp inv.v tb_inv.v

# Executar simulação
vvp tb_inv.vvp

# Visualizar forma de onda
gtkwave inv.vcd
```
Confirmando a implementação correta da operação lógica NOT.

---
## 🧪 Simulação

<p align="center">
  <img src="simulacao_inversor.png" width="700"/>
</p>

### 📊 Análise da Simulação

A forma de onda demonstra o comportamento esperado do inversor:

- Quando a entrada `a = 0`, a saída `b = 1`
- Quando a entrada `a = 1`, a saída `b = 0`

Confirmando a implementação correta da operação lógica NOT.

Este módulo é totalmente sintetizável e pode ser implementado em FPGA.

## 🎥 Demonstração em Vídeo

Vídeo curto demonstrando a simulação do inversor utilizando Icarus Verilog e GTKWave:

🔗 [Assistir demonstração](https://youtu.be/Zb2pwTwXmS0)

