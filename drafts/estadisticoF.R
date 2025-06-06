#! Estadístico F

A <- 7.3
sdA <- 2.3
B <- 5.0
sdB <- 1.9

f <- (sdA*sdA)/(sdB*sdB)

df1 <- 15-1
df2 <- 15-1 


f <- sEnt^2/sDen^2
sEnt^2 <- n*sXprom^2 #varianza promedio entre los grupos
#sXprom <- sigma/raizn
sXprom <- raiz((xPromG1-xProm)^2 + (xPromG2 - xProm)^2)/(m-1)) #promedio medias grupos
m <- total de grupos
xProm <- (xPromG1+xPromG2)/m
sDen^2 <- 1/m * (sdG1^2 + sdG2^2) #varianza promedio dentro de los grupos
dfNumerador <- m-1
dfDenominador <- m*(n-1)



#! Prueba F medias y sds

pruebaF <- function(media1, sd1, n1, media2, sd2, n2, 
                    alpha = 0.05) {
  var1 <- sd1^2
  var2 <- sd2^2
  fcal <- var1 / var2
  df1 <- n1 - 1
  df2 <- n2 - 1
  
  valorP <- 1 - pf(fcal, df1, df2)
  
  print(paste("Estadístico F:", fcal))
  print(paste("Valor p:", valorP))
  
  if (valorP < alpha) {
    print("Se rechaza H0: varianza grupo 1 es mayor que varianza grupo 2")
  } else {
    print("No se rechaza H0: No hay evidencia para decir que las 
        varianzas son diferentes")
  }
}


pruebaF(media1 = 7.3, sd1 = 2.3, n1 = 15, media2 = 5.0, sd2 = 1.9, n2 = 15)


#! Prueba F listas

statisticF <- function(lista1, lista2, alpha = 0.05) {
  var1 <- var(lista1)
  var2 <- var(lista2)
  n1 <- length(lista1)
  n2 <- length(lista2)
  fest <- var1 / var2
  df1 <- n1 - 1
  df2 <- n2 - 1
  valorPe <- 1 - pf(fest, df1, df2)
  
  print(paste("Varianza 1:", var1))
  print(paste("Varianza 2:", var2))
  print(paste("Estadístico F:", fest))
  print(paste("Grados de libertad:", df1, "y", df2))
  print(paste("p value:", valorP))
  
  if (valorPe < alpha) {
    print("Se rechaza H0: las varianzas son diferentes")
  } else {
    cat("No se rechaza H0: No hay evidencia para decir que las 
        varianzas son diferentes")
  }
}