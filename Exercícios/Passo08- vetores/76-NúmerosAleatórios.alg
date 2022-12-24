algoritmo "NúmerosAleatórios"
var
   vet: vetor[1..7] de Inteiro
   cont, num: Inteiro
inicio
      Para cont <- 1 ate 7 faca
           num <- Randi(100): Inteiro
           vet[cont] <- num
      FimPara
      
      Para cont <- 1 ate 7 faca
           Escreva("{", vet[cont], "}")
      FimPara
fimalgoritmo
