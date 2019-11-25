---
layout: post
title:  "Topologia e mensurabilidade"
date:   2019-09-09 18:00:00 0000
categories: post
---

O objetivo desse post é trazer informações básicas sobre espaços topológicos e
espaços mensuráveis, apenas para aguçar a mente daqueles que ainda não
estudam formalmente isso, mas cujo interesse pela matemática se dá desde cedo.

Primeiro, começo falando sobre topologia. Um objeto frequente na matemática é o
conjunto aberto. Mas, o que é um conjunto aberto? Se estamos no conjunto $\mathbb{R}$, pensamos
que os abertos são uniões de conjuntos do tipo

$$(-\infty, a), \ (b, \infty) \ \text{e} \ (a, b)$$

onde $a, b \in \mathbb{R}$.

Mas parece pouco geral e não clarifica nossa mente: por que definiríamos os abertos assim?
E fora do $\mathbb{R}$, como definimos os abertos? Bom, podemos definir abertos de uma maneira mais
"métrica". Podemos dizer que um conjunto $A$ é aberto se para todo
ponto $x$ de $A$ conseguimos achar uma bola aberta $B$ tal que $x$ está em $B$
e $B$ está totalmente contido em $A$. Em símbolos, dizemos que $A$ é aberto se

$$\forall x \in A \  \exists B \ \text{onde B é uma bola aberta (em um sentido preciso) tal que} \\
x \in B \ \text{e} \ B \subseteq A$$

Curiosamente, na reta esta definição coincide com os conjuntos que eu disse que eram
abertos acima.

Antes de continuar, um breve comentário pelo bem de tornar tudo o mais explícito possível: a definição
acima requer que $A$ seja um subconjunto de um espaço métrico, para podermos definir o que são bolas.
No entanto, não se preocupe com isso. Não é o foco do texto.

A definição acima é bastante geral. No entanto - e é aqui que eu quero chamar a atenção de vocês -
um conjunto aberto pode ser algo mais geral ainda! Pode ser um objeto muito abstrato.
O que é um aberto, então, segundo essa definição abstrata? Vamos lá, às formalidades!.

Antes de definir o que é uma topologia, preciso especificar o que é um conjunto
de subconjuntos de $X$. Para clarificar, vou mostrar um exemplo.
Suponha que $$X = \{a, b, c\}$$. Então, o conjunto das partes de $X$, denotado por $\wp(X)$,
é o conjunto de *todos* subconjuntos de $X$, isto é,

$$\wp(X) := \{\varnothing, \{a\}, \{b\}, \{c\}, \{a, b\}, \{b, c\}, \{a, c\}, \{a, b, c\} \}$$

O conjunto acima é um conjunto de subconjuntos. Podemos pensar em um conjunto de subconjuntos
menor, como por exemplo,

$$B := \{\{a\}, \{b, c\}, \{a, b\} \}$$

Em outras palavras, um conjunto de subconjuntos de $X$ é um conjunto $M$ tal que
se $A \in M$, então $A \subseteq X$. Veja o exemplo anterior para checar essa definição: temos que
$$\{b, c\} \in B$$ e $B \subseteq X$.

Pegue um conjunto $X$. Vamos definir o que é topologia. Uma topologia $\tau$ é um
conjunto de subconjuntos de $X$ que satisfaz as seguintes propriedades:

$$1. \ \varnothing \in \tau, \ X \in \tau \\
  2. \ \text{Se pegarmos uma família} \ \{V_{\alpha}\}, \ \text{onde cada} \ V_{\alpha} \in \tau, \\
  \text{então} \ \bigcup_{\alpha} V_{\alpha} \in \tau \\
  3. \ \text{Se pegarmos} \ V_1 \in \tau, \ldots, V_n \in \tau, \ \text{então} \ \bigcap\limits_{i = 1}^n V_i \in \tau$$

Ufa, quanta formalização! Vou tentar explicar em português:

1. Este item quer dizer que o conjunto vazio $\varnothing$ e próprio conjunto $X$ são elementos de $\tau$;

2. Este item quer dizer que você pode pegar quantos conjuntos quiser de $\tau$ (quantos quiser mesmo! Pode ser finitos ou infinitos elementos,
  enumeráveis ou não enumeráveis), e a união desses conjuntos ainda deve pertencer a $\tau$;

3. Este item quer dizer que se você pegar uma quantidade finita de conjuntos em $\tau$, então a intersecção desses
  conjuntos deve estar em $\tau$.

Agora, veja a mágica: dizemos que um conjunto $A$ de $X$ é aberto se $A \in \tau$.
Sim, é só isso! Todo elemento de $\tau$ é um aberto e todo aberto é elemento de $\tau$
