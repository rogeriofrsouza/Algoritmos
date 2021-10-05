algoritmo "Ex05"
var
   I, F, contador: Inteiro
inicio
      EscrevaL(" CONTAGEM INTELIGENTE")
      EScrevaL("-----------------------")
      Escreva("Início: ")
      Leia(I)
      Escreva("Fim: ")
      Leia(F)
      EscrevaL("------------------------")
      EscrevaL("  C O N T A N D O")
      EscrevaL("------------------------")

      contador <- I
      Se (I < F) entao
         Enquanto (I <= F) faca
                  Escreva(I, ".. ")
                  I <- I + 1
         FimEnquanto
      senao
           Se (I > F) entao
              Enquanto (I >= F) faca
                       Escreva(I, ".. ")
                       I <- I - 1
              FimEnquanto
           senao
                EscrevaL("Por favor, digite dois números diferentes.")
           FimSe
      FimSe
fimalgoritmo
