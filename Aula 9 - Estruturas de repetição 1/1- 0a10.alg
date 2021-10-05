algoritmo "conteAté10"
var
   contador: Inteiro
inicio
     contador <- 0
     
     Enquanto (contador <= 10) faca
              EscrevaL(contador)
              contador <- contador + 1
     FimEnquanto
     
     contador <- 10
     Enquanto (contador >= 0) faca
              EscrevaL(contador)
              contador <- contador - 1
     FimEnquanto
     
     contador <- 0
     Enquanto (contador <= 100) faca
              EscrevaL(contador)
              contador <- contador + 10
     FimEnquanto
     
     EscrevaL("Ufa, terminei de contar")
fimalgoritmo
