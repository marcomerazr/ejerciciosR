# Función que imprime numeros pares no multiplos de 10.

paresMultiplosDos <- function(numero){
  if (numero %% 2 == 0 && numero %% 10 != 0){
    print(numero)
  }
}

paresMultiplosDos(10)


#! Ejemplo
lista <- c(1:100)
for (i in 1:length(lista)) {
  paresMultiplosDos(i)
}

