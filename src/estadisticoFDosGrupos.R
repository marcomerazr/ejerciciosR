#! Prueba F

pruebaF <- function(m, n, xPromG1, sdG1, xPromG2, sdG2, 
                    alpha = 0.05) {
  dfNumerador <- m-1
  print(dfNumerador)
  dfDenominador <- m*(n-1)
  print(dfDenominador)
  xProm <- ((xPromG1 + xPromG2)/m)
  sXprom <- sqrt((((xPromG1 - xProm)^2) + ((xPromG2 - xProm)^2))/ (m-1))
  sEnt <- sqrt(n*(sXprom^2))
  sDen <- sqrt((1/m) * (sdG1^2 + sdG2^2))
  f <- sEnt^2/sDen^2
  valorP <- 1 - pf(f, dfNumerador, dfDenominador)
  
  print(paste("Estadístico F:", f))
  print(paste("Valor p:", valorP))
  
  if (valorP < alpha) {
    print("Se rechaza H0: varianza grupo 1 es diferente que varianza grupo 2")
  } else {
    print("No se rechaza H0: No hay evidencia para decir que las 
        varianzas son diferentes")
  }
}

qf(0.05,1,28, lower.tail = FALSE)

pruebaF(m = 2, n = 15, xPromG1 = 7.3, sdG1 = 2.3, xPromG2 = 5.0, sdG2 = 1.9, 
        alpha = 0.05)
