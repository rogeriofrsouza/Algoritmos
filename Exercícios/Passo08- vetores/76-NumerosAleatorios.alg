algoritmo "NúmerosAleatórios"
var
   vet: vetor[1..7] de Inteiro
   cont: Inteiro
inicio
   Para cont <- 1 ate 7 faca
      vet[cont] <- Randi(100): Inteiro
   FimPara

   Para cont <- 1 ate 7 faca
      Escreva("{", vet[cont], "}")
   FimPara
fimalgoritmo
