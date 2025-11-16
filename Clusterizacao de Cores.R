library(jpeg)

imagem <- readJPEG("Isaac.jpg")
str(imagem)

R <- as.vector(imagem[,,1])
G <- as.vector(imagem[,,2])
B <- as.vector(imagem[,,3])

altura <- dim(imagem)[1]   
largura <- dim(imagem)[2] 

x <- rep(1:largura, each = altura)
y <- rep(altura:1, times = largura)

dados <- data.frame(x, y, R, G, B)
head(dados)


clusterizacao <- kmeans(x = dados[,3:5], centers = 10, nstart = 20)
clusterizacao

cores <- rgb(clusterizacao$centers)

cluster <- as.factor(clusterizacao$cluster)

cluster

dados$cluster <- cluster
head(dados)


ggplot(data = dados, aes(x = x, y = y, col = cluster)) +
  geom_point() +
  scale_color_manual(values = cores) +
  theme_void()








