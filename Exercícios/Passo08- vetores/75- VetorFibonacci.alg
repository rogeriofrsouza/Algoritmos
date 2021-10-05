algoritmo "VetorFibonnaci"
var
   vet: vetor[1..15] de Inteiro
   T1, T2, cont: Inteiro
inicio
      T1 <- 1
      T2 <- 2
      vet[T1] <- 0
      vet[T2] <- 1
      
      Para cont <- 3 ate 15 faca
           vet[cont] <- vet[T1] + vet[T2]
           T1 <- T2
           T2 <- cont
      FimPara
      
      Para cont <- 1 ate 15 faca
           Escreva("{", vet[cont], "}")
      FimPara
fimalgoritmo
