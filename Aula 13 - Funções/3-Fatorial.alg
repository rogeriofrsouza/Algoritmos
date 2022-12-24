algoritmo "Fatorial"
var
   N, F: Inteiro
   
funcao Fatorial(V: Inteiro): Inteiro
var
   C, R: Inteiro
inicio
   R <- 1

   Para C <- 2 ate V faca
        R <- R * C
   FimPara
   
   Retorne R
fimfuncao

inicio
   Escreva("Digite um número: ")
   Leia(N)

   F <- Fatorial(N)
   EscrevaL("O valor de", N, "! é igual a", F)
fimalgoritmo
