algoritmo "ConversaoMoedas"
var
   C, Q: Inteiro
   R, D: Real
inicio
   C <- 1

   Escreva("Quantas vezes voc� quer converter? ")
   Leia(Q)

   Enquanto (C <= Q) faca
            Escreval()
            Escreva("Valor em R$")
            Leia(R)

            D <- R / 5.7
            EscrevaL("O valor convertido � US$", D:5:2)

            C <- C + 1
   FimEnquanto
fimalgoritmo
