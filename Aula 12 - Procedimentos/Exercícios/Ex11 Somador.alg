algoritmo "Somador"
var
   N, C, S: Inteiro
   
Procedimento Somador()
Inicio
      Escreva("Digite um valor: ")
      Leia(N)
      
      S <- S + N
FimProcedimento

inicio
      S <- 0
      Para C <- 1 ate 5 faca
           Somador()
      FimPara
      
      EscrevaL("A soma dos valores é ", S)
fimalgoritmo
