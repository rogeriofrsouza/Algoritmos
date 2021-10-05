algoritmo "Ex10"
var
   Cont, Val, SomaV, Div5, Nulo, SPares: Inteiro
   Med: Real
inicio
      SomaV <- 0
      Div5 <- 0
      Nulo <- 0
      SPares <- 0
      
      Para Cont <- 1 ate 5 faca
           Escreva("Digite o ", Cont, "o. valor: ")
           Leia(Val)
           
           SomaV <- SomaV + Val
           Se (Val % 5 = 0) entao
              Div5 <- Div5 + 1
           FimSe
           Se (Val = 0) entao
              Nulo <- Nulo + 1
           FimSe
           Se (Val % 2 = 0) entao
              SPares <- SPares + Val
           FimSe
      FimPara
      
      Med <- SomaV / 5
      
      EscrevaL("A soma entre os valores é ", SomaV)
      EscrevaL("A média entre os valores é ", Med)
      EscrevaL("Valores divisíveis por cinco: ", Div5)
      EscrevaL("Valores nulos: ", Nulo)
      EscrevaL("A soma dos valores pares é ", SPares)
fimalgoritmo
