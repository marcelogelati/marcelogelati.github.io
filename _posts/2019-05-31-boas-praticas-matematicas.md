---
layout: post
title:  "Boas práticas matemáticas"
date:   2019-06-15 16:00:00 0000
categories: post
---

Este post trará algumas práticas matemáticas que eu considero boas e adequadas
tanto para alguém que está lendo matemática, quanto para o próprio autor não
se confundir em sua notação. Sem mais delongas, vamos a elas:

# O $\mathbb{R}^d$ e suas coordenadas

Minha primeira sugestão é reservar reservar a letra $n$ para
sequências e a letra $d$ para a dimensão do espaço euclidiano.
Isto é, dada a sequência $$\{ x_n \}_{n \in \mathbb{N}}$$, escrevemos
$x_n$ para denotar o seu enésimo termo. Por outro lado, $\mathbb{R}^d$ é o produto
cartesiano de $\mathbb{R}$ $d$ vezes.

Minha próxima sugestão também envolve sequências e coordenadas do espaço
euclidiano. Normalmente escrevemos um vetor $v \in \mathbb{R}^d$ da seguinte maneira:

$$v = (v_1, \ v_2, \ldots, \ v_d)$$

Caso quiséssemos tomar uma sequência $$\{ v_n \}_{n \in \mathbb{N}} \subseteq \mathbb{R}^d$$,
representaríamos as coordenadas do vetor assim:

$$v_n = (v_{1, n}, \ v_{2, n}, \ldots, \ v_{d, n})$$

Mas essa notação é extremamente confusa! Portanto, é mais adequado reservarmos
a notação abaixo para representar as coordenadas:

$$v = (v[1], \ v[2], \ldots, \  v[d])$$

Esta notação é vantajosa em duas maneiras: ela explicita automaticamente que
estamos tratando de coordenadas e conseguimos deixamos o subscrito livre. Ela é inspirada
em linguagens de programação, como Matlab, Python e R, que indicam as coordenadas
através de colchetes.

Note como a sequência anterior fica mais limpa:

$$v_n = (v_n[1], \ v_n[2], \ldots, \ v_n[d])$$

O lado ruim dessa notação é que ela é mais trabalhosa de escrever manualmente, pois
 é preciso abrir e fechar colchetes a cada coordenada.

# Conjunto de índices

Digamos que você queira dizer que uma certa propriedade $P$ vale para os números
$x_1, x_2, \ldots, x_k$. Abaixo estão quatro maneiras de escrever formalmente isso:

$$x_i \ \text{tem propriedade} \ P \; \forall i \in \{1, 2, \ldots, k\}$$

$$x_i \ \text{tem propriedade} \ P \; \forall i = 1, 2, \ldots, k$$

$$x_i \ \text{tem propriedade} \ P \; \forall i \in \mathbb{N}, 1 \leq i \leq k$$

$$x_i \ \text{tem propriedade} \ P \; \forall i \in [k] \label{indices}$$

Minha recomendação é que se use o padrão definido em \eqref{indices}, por economizar
tempo e espaço de escrita. Como é uma notação menos usual, você precisa definir
ao leitor que usará ela no início de seu texto!

# Definindo novas variáveis

Falando em definições, existe uma notação que é muito amigável ao leitor na hora
de introduzir variáveis novas. Suponha que você já tenha a variável $x$ e a variável
$y$ e quer introduzir uma nova variável $z$, que é a diferença das duas. Ao invés de escrever
$z = x - y$, é bacana escrever

$$z := x - y$$

pois torna explícito que você está construindo uma variável nova.

Por exemplo, para ilustrar a seção anterior, suponha que o leitor não
conheça o significado de $[k]$. Informamos ao leitor nossa definição da seguinte maneira:

$$\text{Definimos} \  [k] := \{1, \ldots, k \} \subseteq \mathbb{N}$$

# Subconjuntos

Você deve ter notado que utilizei o símbolo $\subseteq$ para indicar acima
o subconjunto dos naturais. Parece estranho, pois sabemos que $[k]$ é um subconjunto
próprio dos naturais - isto é, $[k] \subseteq \mathbb{N}$ e $[k] \neq \mathbb{N}$.
Então, por que não usar $\subset$?

Vejo três vantagens em usar $\subseteq$. Uma delas é que fica explícito ao leitor
que o subconjunto pode ser próprio ou igual ao conjunto inteiro. Claro, $\subset$ também
cumpre essa função, mas um leitor incauto pode achar que a notação $\subset$ se
trata da notação para subconjuntos próprios.

A segunda vantagem é que podemos usar $\varsubsetneq$ para tratar de subconjuntos
próprios automaticamente. Isto é, podemos escrever $[k] \varsubsetneq \mathbb{N}$
e poupar linhas de escrita. Se fôssemos usar $\subset$ e quiséssemos explicitar
que $[k]$ é um subconjunto próprio, teríamos que escrever $[k] \subset \mathbb{N}$ mas
$\mathbb{N} \not\subset [k]$.

A terceira vantagem refere-se à escrita no papel. Suponha que tenhamos um conjunto
$A$, um conjunto $C$, que $A$ é subconjunto de $C$ e que usamos a notação
$\subset$. Então, escreveríamos $A \subset C$. O problema é que
$C$ e $\subset$ ficam muito parecidos no papel! Fica esteticamente horrível e confuso.
Com a notação $\subseteq$ podemos driblar este problema, pois escreveríamos
$A \subseteq C$.

Escreverei mais práticas com o passar do tempo. Se tiverem alguma sugestão
ou não concordarem com o que escrevi acima, podem enviar um email para
marcelogelati@impa.br me contatando.
