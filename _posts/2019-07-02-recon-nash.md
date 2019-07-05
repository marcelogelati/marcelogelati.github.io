---
layout: post
title:  "Equilíbrio de Nash no R: pacote Recon"
date:   2019-07-01 23:00:00 0000
categories: post
---

Nesse post mostrarei como encontrar no R o equilíbrio de Nash de um jogo simultâneo, tanto em estratégias mistas como em estratégias puras. Isso será feito
através do pacote `Recon`, criado pelo [Pedro Cavalcante de Oliveira](https://twitter.com/pedroocava)
e colaborado por mim e por Diego Cardoso. Minha participação foi justamente
nas funções que calculam o equilíbrio de Nash.

O pacote `Recon` é uma tentativa de integrar o básico de economia com
programação, de maneira que os estudantes possam interagir computacionalmente
com o que estão estudando. É uma ferramenta de ensino poderosíssima que
permite aos alunos explorarem a matéria de uma maneira diferente, ao passo que
lidam com ferramentas também necessárias para o dia-a-dia do economista.

Você pode instalar o `Recon` diretamente via CRAN usando `install.packages('Recon')`
ou direto do Github usando `devtools::install_github("pedrocava/Recon")`. A versão
do Github estará, em geral, mais autalizada.

Bom, vamos aos exemplos. Primeiro Trataremos da função `sim_pure_nasheq()`, abreviação
para *Simultaneous Pure Nash Equilibria*, que irá calcular os equilíbrios de Nash puros
(ou degenerados) em jogos simultâneos. Há apenas dois argumentos para essa função:
a matriz do jogador das linhas e a matriz do jogador das colunas. O primeiro jogo
que calcularemos o equilíbrio será o dilema dos prisioneiros. Utilizaremos a versão da
imagem abaixo:

![](/../images/prisioneiro.png)

Se você já é familiarizado com teoria dos jogos, sabe que o equilíbrio de Nash se
dá na combinação de estratégias $$\{ \text{Confessar}, \text{Confessar} \}$$.
Como que conseguiremos esse resultado no R? Primeiro, precisamos montar a
matriz dos dois jogadores. Como exemplo, veja a matriz do prisioneiro 1 (jogador
das linhas):


![](/../images/matriz1pris.png)

Para fazer isso, usamos o código a seguir:

``` r
pris1 <- matrix(c(-8, 0, -10, -1), byrow = TRUE, nrow = 2)
```

A matriz do prisioneiro 2 é semelhante:

``` r
pris2 <- matrix(c(-8, -10, 0, -1), byrow = TRUE, nrow = 2)
```

Agora colocamos na função `sim_pure_nasheq()` os argumentos `pris1` e `pris2`,
nesta ordem:

```r
sim_pure_nasheq(pris1, pris2)
```

O output será uma lista com todos os equilíbrios, dizendo a estratégia da linha
e a estratégia da coluna, respectivamente, que correspondem ao equilíbrio.
No nosso caso, o output é `"1" "1"`, que significa que o equilíbrio se dá
no perfil de estratégias  $$\{ \text{Linha 1}, \text{Coluna 1} \}$$, que é exatamente
$$\{ \text{Confessar}, \text{Confessar} \}$$.

Antes de vermos a função `sim_mixed_nasheq`, abreviação de *Simultaneous Mixed Nash
Equilibria* (equilíbrios em estratégias mistas), vamos a mais dois exemplos:
equilíbrios múltiplos e nenhum equilíbrio. Vemos primeiro o caso em que não há
equilíbrio.

O jogo que veremos é cara ou coroa. O jogo é representado na forma normal da seguinte
maneira:

![](/../images/caracoroa.png)

E rodaremos o seguinte código:

```r
jog1 <- matrix(c(1, -1, -1, 1), byrow = TRUE, nrow = 2)
jog2 <- matrix(c(-1, 1, 1, -1), byrow = TRUE, nrow = 2)
sim_pure_nasheq(jog1, jog2)
```

E a mensagem printada é o que esperávamos: *There's no pure strategies Nash Equilibrium*.

O próximo jogo é o Águia-Pomba. Sua matriz é dada abaixo.

![](/../images/aguiapomba.png)

O código que gerará o equilíbrio é:

```r
ave1 <- matrix(c(-2, 4, 0, 2), byrow = TRUE, nrow = 2)
ave2 <- matrix(c(-2, 0, 4, 2), byrow = TRUE, nrow = 2)
sim_pure_nasheq(ave1, ave2)
```

E o resultado será `"2" "1"` e `"1" "2"`, que corresponde aos perfis de estratégia
$$\{ \text{Pomba}, \text{Águia} \}$$ e $$\{ \text{Águia}, \text{Pomba} \}$$,
respectivamente. Temos nossos múltiplos equilíbrios.

O jogo Águia-Pomba é interessante para nossos propósitos, pois além de ter
dois equilíbrios em estratégias puras, possui também um equilíbrio em estratégia
mista.
Como comentado acima, vamos utilizar a função `sim_mixed_nasheq()`. Rode-a para
ver o que acontece.

```r
sim_mixed_nasheq(ave1, ave2)
```

Como você deve ter visto, o perfil de estratégias aqui é $$\{ (0.5, 0.5), (0.5, 0.5)
  \}$$, que
significa dizer que cada jogador joga uma estratégia com 50% de chance.

Antes de terminar o post, gostaria de ressaltar duas coisas. A primeira, é que
estas funções ainda estão em atualização e em breve teremos melhorias em termos
de estética e funcionalidade. A novidade principal é
a fusão dessas duas funções em apenas uma, `sim_nasheq()`, onde você poderá
especificar através de um terceiro argumento se quer procurar o equilíbrio
em estratégias puras ou mistas.

O segundo ponto importante, que não foi mencionado ao longo dos exemplos,
refere-se ao funcionamento das funções. Ambas as funções só resolvem jogos
de dois jogadores. No entanto, enquanto a função `sim_pure_nasheq()` resolve
qualquer matriz $n \times m$, a função `sim_mixed_nasheq()` só permite
matrizes $2 \times 2$ como input.
