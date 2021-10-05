algoritmo "SomaParametrosReferencia"
var
   X, Y: Inteiro

//var passa parâmetro por referência
Procedimento Soma (var A, B: Inteiro)
inicio
      //A soma agora afeta a variável x e Y também
      A <- A + 1
      B <- B + 2
      
      EscrevaL("Valor de A = ", A)
      EscrevaL("Valor de B = ", B)
      EscrevaL("Soma A + B = ", A + B)
FimProcedimento

inicio
      X <- 4
      Y <- 8
      //O endereço de X para dentro de A e de Y para B
      Soma (X, Y)
      
      EscrevaL("Valor de X = ", X)
      EscrevaL("Valor de Y = ", Y)
      EscrevaL("Soma X + Y = ", X + Y)
fimalgoritmo
