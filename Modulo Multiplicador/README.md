# 🔁 Multiplicador Digital

Implementação de um multiplicador digital utilizando Verilog HDL com modelagem **dataflow** (atribuição contínua).

---

## 📌 Descrição

Este módulo realiza a multiplicação de dois sinais digitais de entrada (y e z), produzindo o resultado na saída saida.
É um circuito aritmético fundamental para processamento digital e operações matemáticas em hardware.

---

## 💻 Abordagem de Implementação
Modelagem Dataflow com assign
Este projeto utiliza **atribuição contínua** (assign) para implementação do multiplicador, caracterizando uma abordagem de **modelagem dataflow**:

assign saida = y * z;


🔹 **Características Técnicas:**

- **Atribuição Contínua (assign):** Atualização automática da saída sempre que há mudança nas entradas  
- **Modelagem Dataflow:** Descrição do fluxo de dados entre sinais, sem necessidade de blocos `always`  
- **Circuitos Combinacionais:** Implementação puramente combinacional, sem elementos de memória  
- **Síntese Otimizada:** Permite que as ferramentas de síntese otimizem automaticamente a lógica Permite que as ferramentas de síntese otimizem automaticamente a lógica

 ✅ **Vantagens para Hardware**

- **Menor latência:** Resposta imediata às mudanças de entrada  
- **Código conciso:** Menor complexidade e maior legibilidade  
- **Síntese eficiente:** Ferramentas EDA otimizam automaticamente a implementação  
- **Sem clock necessário:** Circuito puramente combinacional  
- **Previsibilidade temporal:** Facilita análise de timing e propagação

---

## ⚙️ Testbench
O testbench instancia o módulo multiplicar e aplica diversos estímulos de entrada para verificar a funcionalidade do multiplicador:

• Testes com diferentes combinações de valores para y e z;

• Verificação automática do resultado da multiplicação;

• Monitoramento da saída para garantir que o circuito se comporta conforme esperado


A simulação pode ser realizada em qualquer simulador Verilog (Icarus Verilog, ModelSim, Quartus, etc.)

---

