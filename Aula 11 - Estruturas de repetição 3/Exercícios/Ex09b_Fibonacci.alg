algoritmo "Ex09b"
var
   N1, N2, N3, Cont: Inteiro
inicio
   N1 <- 0
   N2 <- 1
   
   Escreva(N1)
   Escreva(N2)

   Para Cont <- 3 ate 15 faca
        N3 <- N1 + N2
        Escreva(N3)

        N1 <- N2
        N2 <- N3
   FimPara
fimalgoritmo
