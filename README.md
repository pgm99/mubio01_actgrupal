# Actividad grupal Algoritmos de Inteligencia Artificial
#### Participantes: Celia, Pablo, Maria, Elisabet y Carlos

## Análisis de un conjunto de datos de origen biológico mediante técnicas de machine learning supervisadas y no supervisadas

El principal objetivo de este repositorio es realizar la Actividad grupal 3 de la asingatura de Algoritmos e Intligencia Artificial.
Esta actividad consiste en implemenar técnicas de aprendizaje supervisado y no supervisado para el análisis de un conjunto de datos de origen biológico.
El dataset de trabajo esta formado por un total de 800 pacientes, los cuales se han classificado en la variable class y se ha medido la expresión génica de 500 genes diferentes. 
La variable categorica del dataset "class" esta formada por las siguientes categorias: "CHC", "CGC", "CFB", "AGH" y "HPB".

En el repositorio se encuentra un primer script para preprocesar y limpiar los datos. Para el análisis de los datos se encuentran divididos en métodos supervisados y métodos no supervisados

Los métodos supervisados implementados en esta actividad han sido Regularized Discriminant Analysis (RDA), kNN y Random Forest. Entre los no supervisados, se pueden dividir aquellos empleados para la reducción de la dimensionalidad de los datos, como UMAP y t-SNE. Y aquellos que de cluserización, k-means y Clustering Jerárquico Divisivo.

Para usar este repositorio se puede hacer de dos maneras, usando el script general donde se encuentra el codigo para todos los métodos. O accediendo a el script concreto para cada método en su archivo correspondiente.

