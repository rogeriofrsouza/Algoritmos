algoritmo "Somador"
var
   C, S: Inteiro
   
procedimento Somador(var X: Inteiro)
var
   N: Inteiro
inicio
   Escreva("Digite um valor: ")
   Leia(N)
   
   X <- X + N
fimprocedimento

inicio
   S <- 0
   
   Para C <- 1 ate 5 faca
        Somador(S)
   FimPara
   
   Escreval()
   Escreva("A soma dos valores é", S)
fimalgoritmo
