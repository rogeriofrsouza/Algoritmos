algoritmo "FazSomaProcedimento"
var
   X, Y: Inteiro

//A e B s�o par�metros, n�o s�o vari�veis
procedimento Soma(A, B: Inteiro)
inicio
   EscrevaL("Recebi o valor", A)
   EscrevaL("Recebi o valor", B)
   EscrevaL("A soma entre os dois �", A + B)
fimprocedimento

inicio
   X <- 5
   Y <- 3
   
   Soma(X, Y)
fimalgoritmo
