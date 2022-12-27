algoritmo "vetor10-pares"
var
   vet: vetor[1..10] de Inteiro
   SoPares: vetor[1..10] de Inteiro
   cont, Totpar, aux: Inteiro
   
procedimento PosicaoPares()
inicio
   aux <- aux - 1
   
   Para cont <- 1 ate aux faca
      Se (cont = aux) entao
        Escreva(SoPares[cont])
      senao
          Escreva(SoPares[cont], ",")
      FimSe
   FimPara
fimprocedimento

inicio
   Totpar <- 0
   aux <- 1

   Para cont <- 1 ate 10 faca
        vet[cont] <- Randi(100): Inteiro
        
        Se (vet[cont] % 2 = 0) entao
           Totpar <- Totpar + 1
           SoPares[aux] <- cont
           aux <- aux + 1
        FimSe
   FimPara

   Escreval("____________________________________________________________________________")
   Para cont <- 1 ate 10 faca
        Escreva("|", vet[cont]:3, " ")
   FimPara
   Escreva("|")
   Escreval()

   Para cont <- 1 ate 10 faca
        Escreva(cont:4, ".")
   FimPara

   Escreval()
   Escreval()
   
   Se (Totpar > 1) entao
      Escreva("Encontrei", Totpar, " valores pares, nas posições:")
      PosicaoPares()
   senao
        Se (Totpar = 1) entao
           Escreva("Encontrei apenas", Totpar, " valor par, na posição:")
           PosicaoPares()
        senao
             Escreval("Não foram encontrados valores pares :(")
        FimSe
   FimSe
fimalgoritmo
