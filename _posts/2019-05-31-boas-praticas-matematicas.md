---
layout: post
title:  "Boas práticas matemáticas"
date:   2019-05-26 14:49:32 -0300
categories: mypost
---

Este post trará algumas práticas matemáticas que eu considero boas e adequadas tanto para facilitar a leitura quanto para a própria escrita do autor. Sem
mais delongas, vamos a elas:

# O $\mathbb{R}^d$ e suas coordenadas

Já começo fazendo uma separação fundamental para que a notação não se misture:
reservo a letra $d$ para representar a dimensão do espaço euclidiano
$\mathbb{R}^d$ e a letra $n$ para o n-ésimo termo de uma sequência, digamos,
$x_n$.

Aliás, aqui entra outra indagação: se representamos os termos da sequência com
subscritos, como devemos representar as coordenadas de um vetor em $\mathbb{R}^d$?
Minha sugestão é que representemos assim:

$$x \in \mathbb{R}^d, \  x = (x[1], \ x[2], \ldots, \  x[d])$$.

Esta notação é vantajosa em duas maneiras: ela explicita automaticamente que
estamos tratando de coordenadas e deixamos o subscrito livre. Ela é inspirada
em linguagens de programação, como Matlab, Python e R, que indicam as coordenadas
através de colchetes.

O lado ruim dessa notação é que ela é mais trabalhosa de escrever: se escrevessemos
o vetor acima como $x = (x_1, \ x_2, \ldots, \ x_d)$ ganharíamos tempo, pois
não precisaríamos abrir e fechar colchetes a cada coordenada.

# Conjunto discreto
