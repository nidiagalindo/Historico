# Librerias 
library(ggplot2)
library(dplyr)
library(tidyverse)
library(tidyr)
# Reportes agua histórico
file.choose()
df.reportes = read.csv("C:\\Bedu\\Historico\\Reportes_agua_hist\\reportes_agua_hist.csv")
View(df.reportes)
# Primeras filas
head(df.reportes)
# Clase de dataframe
class(df.reportes)
# Dimensión dataframe
dim(df.reportes)
# Estructura
(str(df.reportes))
# Nombre de las columnas
names(df.reportes)
# Resumen
summary(df.reportes)
# Cambio de clase de columna fecha
df.reportes <- df.reportes %>%
  mutate(fecha = as.Date(fecha))
summary(df.reportes)
# Datos nulos 
print(is.na(df.reportes))
print(summary(df.reportes))
cantidad_nulos <- sum(is.na(df.reportes))
print("Cantidad de datos nulos en el DataFrame:")
print(cantidad_nulos)
cantidad_nulos_por_columna <- colSums(is.na(df.reportes))
print("Cantidad de datos nulos por columna en el DataFrame:")
print(cantidad_nulos_por_columna)
