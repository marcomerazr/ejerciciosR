#Funcion que clasifica numeros como pares o impares

etiqueta <- function(numero){
  if (numero %% 2 == 0){
    print(paste(numero,"Par"))
  }else{
    print(paste(numero,"Impar"))
  }
}

#! Ejemplo de un número

etiqueta(11)

#! Clasificar una lista de números

listaDeNumeros <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)

for (i in 1:length(listaDeNumeros)) {
  etiqueta(i)
}

listaParesImpares <- c()
for (i in 1:length(listaDeNumeros)) {
  listaParesImpares <- c(listaParesImpares,etiqueta(listaDeNumeros[i]))
}

print(listaParesImpares)








