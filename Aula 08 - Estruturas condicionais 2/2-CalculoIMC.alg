algoritmo "CalculoIMC"
var
   massa, altura, IMC: Real
inicio
   Escreva("Massa (Kg): ")
   Leia(massa)
   Escreva("Altura (m): ")
   Leia(altura)
   
   IMC <- massa / (altura ^ 2)
   EscrevaL("IMC: ", IMC:5:2)
   
   Se (IMC < 17) entao
      EscrevaL("Muito abaixo do peso")
   senao
        Se (IMC < 18.5) entao
           EscrevaL("Abaixo do peso")
        senao
             Se (IMC < 25) entao
                EscrevaL("Peso ideal")
             senao
                  Se (IMC < 30) entao
                     EscrevaL("Sobrepeso")
                  senao
                       Se (IMC < 35) entao
                          EscrevaL("Obesidade")
                       senao
                            Se (IMC < 40) entao
                               EscrevaL("Obesidade severa")
                            senao
                                 EscrevaL("Obesidade m�rbida")
                            FimSe
                       FimSe
                  FimSe
             FimSe
        FimSe
   FimSe
fimalgoritmo
