algoritmo "FazSomaProcedimento"
var
   X, Y: Inteiro

//A e B são parâmetros, não são variáveis
procedimento Soma(A, B: Inteiro)
inicio
   EscrevaL("Recebi o valor", A)
   EscrevaL("Recebi o valor", B)
   EscrevaL("A soma entre os dois é", A + B)
fimprocedimento

inicio
   X <- 5
   Y <- 3
   
   Soma(X, Y)
fimalgoritmo
