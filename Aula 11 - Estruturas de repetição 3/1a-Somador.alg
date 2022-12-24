algoritmo "Somador"
var
   N, C, S: Inteiro
inicio
   S <- 0
   
   Para C <- 1 ate 5 faca
        Escreva("Digite um valor: ")
        Leia(N)
        
        S <- S + N
   FimPara

   Escreval()
   EscrevaL("A soma dos valores é", S)
fimalgoritmo
