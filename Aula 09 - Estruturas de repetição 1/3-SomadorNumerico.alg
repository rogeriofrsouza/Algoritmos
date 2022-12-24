algoritmo "somadorNumerico"
var
   contador, N, soma, maior, menor : Inteiro
inicio
   soma <- 0

   contador <- 1
   Enquanto (contador <= 5) faca
            Escreva("Digite o", contador, "o. valor: ")
            Leia(N)

            Se (contador = 1) entao
               maior <- N
               menor <- N
            senao
                 Se (N > maior) entao
                    maior <- N
                 FimSe
                 
                 Se (N < menor) entao
                    menor <- N
                 FimSe
            FimSe

            soma <- soma + N
            contador <- contador + 1
   FimEnquanto

   Escreval()
   EscrevaL("A soma de todos os valores foi", soma)
   Escreva("O maior valor digitado foi", maior)
   Escreva(" e o menor valor foi", menor)
fimalgoritmo
