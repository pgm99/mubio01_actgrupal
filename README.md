# Actividad grupal Algoritmos de Inteligencia Artificial
#### Participantes: Celia, Pablo, Maria, Elisabet y Carlos (Equipo 3)

## Análisis de un conjunto de datos de origen biológico mediante técnicas de machine learning supervisadas y no supervisadas

El principal objetivo de este repositorio es realizar la Actividad grupal 3 de la asignatura de Algoritmos e Inteligencia Artificial.
Esta actividad consiste en implementar técnicas de aprendizaje supervisado y no supervisado para el análisis de un conjunto de datos de origen biológico.

El dataset de trabajo está formado por un total de 800 pacientes, los cuales se han clasificado en la variable class y se ha medido la expresión génica de 500 genes diferentes. 
La variable categórica del dataset "class" está formada por las siguientes categorías: "CHC", "CGC", "CFB", "AGH" y "HPB".

En el repositorio se encuentra un primer script para preprocesar y limpiar los datos. Para el análisis de los datos, los scritps se encuentran divididos en métodos supervisados y métodos no supervisados.

Los métodos supervisados implementados en esta actividad han sido Regularized Discriminant Analysis (RDA), kNN y Random Forest. Entre los no supervisados, se pueden dividir aquellos empleados para la reducción de la dimensionalidad de los datos, como UMAP y t-SNE. Y aquellos que de clusterización, k-means y clustering jerárquico divisivo.

Para usar este repositorio se puede hacer de dos maneras, usando el script general donde se encuentra el código para todos los métodos. O accediendo al script concreto para cada método en su archivo correspondiente.

