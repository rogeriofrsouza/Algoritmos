algoritmo "Ex10"
var
   Cont, Val, SomaV, Divi5, Nulo, SPares: Inteiro
   Med: Real
inicio
   SomaV <- 0
   Divi5 <- 0
   Nulo <- 0
   SPares <- 0

   Para Cont <- 1 ate 5 faca
      Escreva("Digite o ", Cont, "o. valor: ")
      Leia(Val)

      SomaV <- SomaV + Val

      Se (Val % 5 = 0) entao
         Divi5 <- Divi5 + 1
      FimSe

      Se (Val = 0) entao
         Nulo <- Nulo + 1
      FimSe

      Se (Val % 2 = 0) entao
         SPares <- SPares + Val
      FimSe
   FimPara

   Med <- SomaV / 5
   Escreval()

   EscrevaL("A soma entre os valores �", SomaV)
   EscrevaL("A m�dia entre os valores �", Med)
   EscrevaL("Valores divis�veis por cinco:", Divi5)
   EscrevaL("Valores nulos:", Nulo)
   EscrevaL("A soma dos valores pares �", SPares)
fimalgoritmo
