algoritmo "SomaParametrosReferencia"
var
   X, Y: Inteiro

//var passa par�metro por refer�ncia
procedimento Soma(var A, B: Inteiro)
inicio
   //A soma agora afeta a vari�vel X e Y tamb�m
   A <- A + 1
   B <- B + 2

   EscrevaL("Valor de A =", A)
   EscrevaL("Valor de B =", B)
   EscrevaL("Soma A + B =", A + B)
fimprocedimento

inicio
   X <- 4
   Y <- 8
   
   //O endere�o de X para dentro de A e de Y para B
   Soma(X, Y)
   Escreval()

   EscrevaL("Valor de X =", X)
   EscrevaL("Valor de Y =", Y)
   EscrevaL("Soma X + Y =", X + Y)
fimalgoritmo
