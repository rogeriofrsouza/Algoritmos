algoritmo "Vetor10a"
var
   vet: vetor[1..10] de Inteiro
   cont, aux: Inteiro
inicio
      aux <- 5
      Para cont <- 1 ate 10 faca
           vet[cont] <- aux
           aux <- aux + 5
      FimPara
      
      Para cont <- 1 ate 10 faca
           Escreva("{ ", vet[cont], " }")
      FimPara
fimalgoritmo
