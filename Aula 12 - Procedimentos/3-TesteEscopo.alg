algoritmo "testeEscopo"
var
   //N1 e N2 s�o globais, funcionam no programa todo
   N1, N2: Inteiro

//A e B s�o par�metros locais
procedimento Rotina(A, B: Inteiro)
var
   //X e Y s�o locais, s� funcionam no procedimento
   X, Y: Inteiro
inicio
   X <- A
   Y <- B
   
   Escreva(N1, N2, A, B, X, Y)
fimprocedimento

inicio
   N1 <- 5
   N2 <- 3
   
   Rotina(N1, N2)
   
   //A, B, X, Y n�o v�o funcionar
   Escreval(N1, N2, A, B, X, Y)
fimalgoritmo
