## Quantização de Cores com K-Means em uma Imagem

Neste projeto eu aplico o algoritmo **K-Means** para reduzir o número de cores de uma imagem.
A ideia é usar os clusters como uma forma de **quantização**, substituindo cada pixel pela cor do centro do cluster ao qual ele pertence.

Para os testes utilizei a imagem do meu cachorro Isaac com consentimento do mesmo.

---

## Objetivo do Projeto

Transformar uma imagem original em uma versão com uma quantidade inferior de cores que a original, preservando a estrutura visual, mas reduzindo significativamente a variedade de cores.

Esse processo é parecido com o que alguns formatos de imagem fazem para comprimir arquivos usando paletas reduzidas.
---

## Como foi feito

1. A imagem é lida com o pacote `jpeg`.
2. Os canais **R, G e B** são extraídos como vetores.
3. Cada pixel vira uma linha de um data frame com:

   * posição X
   * posição Y
   * valores de R, G e B
4. Aplico **K-Means**
5. Cada cluster representa uma cor.
6. A imagem é reconstruída plotando cada pixel com a cor do cluster ao qual pertence.

---

## Visualização

O resultado final mostra a imagem recriada com a paleta reduzida.
Cada ponto representa um pixel, colorido segundo o centro do cluster.

> Imagem Original 
![Original](https://github.com/VictorBertolini/Clusterizacao-de-imagem-com-KMeans/blob/main/images/Isaac.jpg)

> K = 2
![K2](https://github.com/VictorBertolini/Clusterizacao-de-imagem-com-KMeans/blob/main/images/Isaac_k2.png)

> K = 10
![K10](https://github.com/VictorBertolini/Clusterizacao-de-imagem-com-KMeans/blob/main/images/Isaac_k10.png)

> K = 256

![K256](https://github.com/VictorBertolini/Clusterizacao-de-imagem-com-KMeans/blob/main/images/Isaac_k256.png)
---

## Tecnologias Utilizadas

* **R**
* `jpeg`
* `ggplot2`
* `kmeans`

---

## Como Executar

1. Coloque a imagem `Isaac.jpg` na mesma pasta do script. (ou outra de preferência)
2. Instale os pacotes:

```r
install.packages("jpeg")
install.packages("ggplot2")
```

3. Execute o script.

---
