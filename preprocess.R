library(dplyr)

#Cambiar el path al que sea
path <- "/home/vant/UNIR/algoritmos_IA/actividades/act3/data/"

expression <- read.csv(file = paste0(path,"gene_expression.csv"), sep = ";", header = FALSE)
genes <- read.csv(file = paste0(path,"column_names.txt"), header = FALSE)
samples <- read.csv(file = paste0(path,"classes.csv"), sep = ";", header = FALSE)

colnames(expression) <- genes$V1
expression$class <- samples$V2
expression<-expression[,c(501, 1:500)] #Para que salga class la primera columna
rownames(expression) <- samples$V1
expression$class <- as.factor(expression$class)

#Imputación de NA con dplyr, manteniendo las categóricas y sustituyendo los NA con la media de la columna
expression <- expression %>%
  mutate_if(is.numeric, ~ifelse(is.na(.), mean(., na.rm = TRUE), .))



