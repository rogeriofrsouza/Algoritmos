algoritmo "Vetor10c"
var
   vet: vetor[1..10] de Inteiro
   cont, aux: Inteiro
inicio
      aux <- 5
      
      Para cont <- 1 ate 10 faca
           vet[cont] <- aux

           Se(vet[cont] = 5) entao
               aux <- 3
           senao
                Se(vet[cont] = 3) entao
                    aux <- 5
                FimSe
           FimSe
      FimPara
      
      Para cont <- 1 ate 10 faca
           Escreva("{ ", vet[cont], " }")
      FimPara
fimalgoritmo
