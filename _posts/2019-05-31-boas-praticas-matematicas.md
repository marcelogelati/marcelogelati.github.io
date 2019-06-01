---
layout: post
title:  "Boas práticas matemáticas"
date:   2019-05-31 22:00:00 -0300
categories: mypost
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

$$x_i \ \text{tem propriedade} \ P \; \forall 1 \leq i \leq k$$

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

Adicionarei novas boas práticas com o tempo.
