### 🔁 Half Adder (Somador de 1 bit)

Implementação de um half adder (somador de 1 bit) em Verilog. O desenvolvimento foi feito no Visual Studio Code com a extensão TerosHDL, utilizando Icarus Verilog para compilação e simulação, e GTKWave para visualização das formas de onda.

Um half adder é um circuito lógico que realiza a soma de dois bits. Ele possui duas entradas e duas saídas:
• a e b: bits de entrada para a soma;
• sum: representa o resultado da soma binária;
• carry: indica o valor que deve ser levado para o próximo dígito mais significativo.

A partir da Tabela Verdade, podemos escrever as expressões booleanas de um half adder da seguinte forma:
  sum = a ⊕ b (1)
  carry = a · b (2)

Assim, um half adder pode ser implementado com duas portas lógicas: uma porta XOR
para calcular a soma e uma porta AND para calcular o carry. 

---
## 🧠 Tabela Verdade do Half Adder

| Entrada (a) | Entrada (b) | Soma (sum) | Carry (carry) |
|-------------|-------------|------------|---------------|
| 0           | 0           | 0          | 0             |
| 0           | 1           | 1          | 0             |
| 1           | 0           | 1          | 0             |
| 1           | 1           | 0          | 1             |

---

## 🧪 Testbench (tb_half_adder)
O testbench instancia o módulo half_adder e aplica todas as combinações possíveis de entrada (00, 01, 10, 11), com intervalo de 5 ns entre cada vetor de teste. 

Estímulos aplicados

Tempo (ns)	a	b	sum (esperado)	carry (esperado)
0	0	0	0	0
5	0	1	1	0
10	1	0	1	0
15	1	1	0	1




---

## 🚀 Simulação com Icarus Verilog
A simulação foi executada no Visual Studio Code utilizando o Icarus Verilog. O comando vvp executou o arquivo compilado e gerou o arquivo half_adder.vcd com as formas de onda.

<p> <img src="simulacao_half_adder_VSCode.png" width="1000"/> </p>


---

## 🛠️Visualização no GTKWave
O arquivo half_adder.vcd foi aberto no GTKWave, permitindo a análise gráfica do comportamento lógico ao longo do tempo. 
A forma de onda confirma que as saídas sum e carry correspondem exatamente à tabela verdade.

<p> <img src="simulacao_half_adder_GTKWave.png" width="1000"/> 

---

## ⚙️ 📊 Análise dos Resultados
A simulação demonstra que o módulo half_adder opera corretamente para todas as combinações de entrada:

Quando a=0, b=0 → sum=0, carry=0

Quando a=0, b=1 → sum=1, carry=0

Quando a=1, b=0 → sum=1, carry=0

Quando a=1, b=1 → sum=0, carry=1

As formas de onda no GTKWave (ou a saída textual do $monitor) confirmam os valores lógicos nos instantes esperados, validando o funcionamento do circuito.

---

## ✅ Conclusão
O half adder foi implementado com sucesso em Verilog, utilizando uma descrição comportamental simples e direta. A simulação com Icarus Verilog e a visualização no GTKWave comprovam que o circuito atende à tabela verdade esperada. Este módulo pode ser facilmente integrado em projetos maiores, como somadores completos (full adders) ou unidades aritméticas.

---

## 🛠️ Ferramentas utilizadas
Icarus Verilog – compilação e simulação

Visual Studio Code + TerosHDL – edição e gerenciamento do projeto

GTKWave – visualização de formas de onda



