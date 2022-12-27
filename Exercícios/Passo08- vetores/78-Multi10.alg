algoritmo "Vetor15-mult10"
var
   vet: vetor[1..15] de Inteiro
   So10: vetor[1..15] de Inteiro
   cont, Tot10, aux: Inteiro
   
procedimento Posicao10()
inicio
   aux <- aux - 1
   
   Para cont <- 1 ate aux faca
      Se (cont = aux) entao
        Escreva(So10[cont])
      senao
          Escreva(So10[cont], ",")
      FimSe
   FimPara
fimprocedimento

inicio
   Tot10 <- 0
   aux <- 1

   Para cont <- 1 ate 15 faca
      vet[cont] <- Randi(100): Inteiro
      
      Se (vet[cont] % 10 = 0) entao
        Tot10 <- Tot10 + 1
        So10[aux] <- cont
        aux <- aux + 1
      FimSe
   FimPara

   Escreval("____________________________________________________________________________")
   Para cont <- 1 ate 15 faca
      Escreva("|", vet[cont]:3, " ")
   FimPara
   Escreva("|")
   Escreval()

   Para cont <- 1 ate 15 faca
      Escreva(cont:4, ".")
   FimPara

   Escreval()
   Escreval()
   
   Se (Tot10 > 1) entao
      Escreva("Encontrei", Tot10, " valores múltiplos de 10, nas posições:")
      Posicao10()
   senao
      Se (Tot10 = 1) entao
        Escreva("Encontrei apenas", Tot10, " valor múltiplo de 10, na posição:")
        Posicao10()
      senao
          Escreval("Não foram encontrados valores múltiplos de 10 :(")
      FimSe
   FimSe
fimalgoritmo
