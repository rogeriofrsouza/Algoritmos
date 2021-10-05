algoritmo "Ex03"
var
   N1, N2, M: Real
inicio
      EscrevaL("--------------------------")
      EscrevaL(" ESCOLA JAVALI CANSADO ")
      EscrevaL("--------------------------")
      Escreva("Primeira nota: ")
      Leia(N1)
      Escreva("Segunda nota: ")
      Leia(N2)
      
      M <- (N1 + N2) / 2
      
      EscrevaL("--------------------------")
      EscrevaL(" Média: ", M:2:1)
      
      Se (M <= 10) e (M >=9) entao
         EscrevaL(" Aproveitamento: A")
      senao
           Se (M < 9) e (M >= 8) entao
              EscrevaL(" Aproveitamento: B")
           senao
                Se (M < 8) e (M >= 7) entao
                   EscrevaL(" Aproveitamento: C")
                senao
                     Se (M < 7) e (M >= 6) entao
                        EscrevaL(" Aproveitamento: D")
                     senao
                          Se (M < 6) e (M >= 5) entao
                             EscrevaL(" Aproveitamento: E")
                          senao
                               Se (M < 5) e (M >= 0) entao
                                  EscrevaL(" Aproveitamento: F")
                               senao
                                    EscrevaL("Ocorreu um erro. Por favor, digite as notas novamente")
                               FimSe
                          FimSe
                     FimSe
                FimSe
           FimSe
      FimSe
      EscrevaL("--------------------------")
fimalgoritmo
