
#________________Tablas de frecuencia____________ 

# 1.- Importar la matriz iris

data(iris)

# 2.- Exploracion de la matriz
# dimension de la matriz tiene 150 individuos y 5 variables
dim(iris)

# 3.- Nombre de las variables
colnames(iris)

# 4.- Tipos de variables
str(iris)

# 5.- visualizacion de una variable especifica 
iris $Species

# 6.- En busca de valores perdidos
anyNA(iris)


# -----------------------------------------
# Generacion de tablas de frecuencia
#------------------------------------------

# 1.- Posicion en una variable especifica Petal.Lenght indico que 
# el nombre me lo acorte a PL, lo que resulte de esa indicacion quiero que
# lo ponga en formato tabla, lo que resulte adquiera un formato de data.frime
# A partir de lo anterior, voy a generar una nueva variable (objeto) llamada 
# tabla_PL.
tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))

# 2.- Frecuencia absoluta
tabla_PL

# 3.- Se construye la tabla de frecuencias completas redondeando
# a 3 decimales.

transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

# 4.- Agrupacion de variables 8 clases
tabla_clases<-as.data.frame(table(Petal.Lenght=factor(cut(iris$Petal.Length,
                                                          breaks = 8))))

# 5.- Visualizacion de la tabla
tabla_clases

# 6.- Construccion de tabla de frecuencias completa redondeado a 3 decimales
tabla<-transform(tabla_clases,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

# Visualizar la tabla
tabla

