library(ggplot2)
library(stats)
library(Rtsne) 
library(uwot) 
library(factoextra)
library(dplyr) 
set.seed(1234)

#Realizamos una reducción de dimensionalidad t-SNE y almacenamos los resultados en un dataframe
tsne_result <- data.frame(Rtsne(sapply(expression, as.numeric))$Y) 

#Representamos los resultados del t-SNE en un gráfico para observar las muestras y sus clases
ggplot(tsne_result, aes(x = X1, y = X2, color = expression$class)) +
  geom_point(size = 3) +
  scale_color_manual(values = c("red", "blue", "green", "orange", "purple")) +
  labs(title = "Reducción t-SNE", x = "tSNE1", y = "tSNE2", color = "Grupo") +
  theme_classic() +
  theme(plot.title=element_text(hjust=0.5, size = 18, face = "bold")) 


####UMAP####

#Realizamos una reducción de dimensionalidad UMAP y almacenamos los resultados en un dataframe. En este caso elegimos una distancia mínima de 0.5
#para no forzar clústers y poder observar todas las muestras en su conjunto
umap.results <- umap(expression, n_neighbors = 0.2*length(expression), n_components = 2, min_dist = 0.5, local_connectivity = 1) 
umap.df <- data.frame(umap.results) 

#Realizamos un gráfico para observar los resultados del UMAP
ggplot(umap.df, aes(x = X1, y = X2, color = expression$class)) +
  geom_point(size = 3) +
  scale_color_manual(values = c("red", "blue", "green", "orange", "purple")) +
  labs(title = "UMAP reduction", x = 'dim1', y = 'dim2', color = "Grupo") +
  theme_classic() +
  theme(plot.title=element_text(hjust=0.5)) 



