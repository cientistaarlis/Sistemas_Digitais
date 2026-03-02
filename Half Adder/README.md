Um half adder é um circuito lógico que realiza a soma de dois bits. Ele possui duas entradas e duas saídas:
• a e b: bits de entrada para a soma;
• sum: representa o resultado da soma binária;
• carry: indica o valor que deve ser levado para o próximo dígito mais significativo.

Tabela da Verdade que descreve o comportamento esperado da operação de um half adder.


A partir da Tabela Verdade, podemos escrever as expressões booleanas de um half adder da seguinte forma:
  sum = a ⊕ b (1)
  carry = a · b (2)

Assim, um half adder pode ser implementado com duas portas lógicas: uma porta XOR
para calcular a soma e uma porta AND para calcular o carry. As Figuras 2a e 2b ilustram o
diagrama de bloco (ou modelo caixa preta) e o esquemático de um half adder, respectivamente.

<p align="left">
  <img src="half adder block.png" width="150"/>


<align="right">
  <img src="half adder gate.png" width="150"/>
</p>
