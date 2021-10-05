algoritmo "DESAFIO Fibonacci"
var
   A, B, C, num, cont: Inteiro
   F: vetor[1..15] de Inteiro
   
Procedimento Fibonacci(N: Inteiro)
var
   cont2: Inteiro
inicio
      Para cont <- 1 ate N faca
           Escreva(F[cont], "| ")
      FimPara
FimProcedimento

inicio
      A <- 0
      B <- 1
      F[1] <- A
      F[2] <- B
      
      Para cont <- 3 ate 15 faca
           C <- A + B
           F[cont] <- C
           A <- B
           B <- C
      FimPara
      
      Escreva("Quantos termos da sequência Fibonacci você quer exibir na tela? ")
      Leia(num)

      Escreval()
      Fibonacci(num)
fimalgoritmo
