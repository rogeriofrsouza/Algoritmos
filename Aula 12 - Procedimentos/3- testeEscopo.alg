algoritmo "testeEscopo"
var
//N1 e N2 são globais, funcionam no programa todo
   N1, N2: Inteiro

//A e B são parâmetros locais
Procedimento Rotina (A, B: Inteiro)
var
//X e Y são locais, só funcionam no procedimento
   X, Y: Inteiro
inicio
      X <- A
      Y <- B
      Escreva(N1, N2, A, B, X, Y)
FimProcedimento

inicio
      N1 <- 5
      N2 <- 3
      Rotina(N1, N2)
      //A, B, X, Y não vão funcionar
      Escreva(N1, N2, A, B, X, Y)
fimalgoritmo
