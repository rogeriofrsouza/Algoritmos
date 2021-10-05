algoritmo "NumerosPares"
var
   Cont, V: Inteiro
inicio
      Escreva("Digite um valor: ")
      Leia(V)
      
      Para Cont <- 0 ate V passo 2 faca

           Se (V % 2 = 1) entao
              V <- V - 1
           FimSe
           EscrevaL(Cont)
      FimPara
      
      Para Cont <- V ate 0 passo -2 faca
           EscrevaL(Cont)
      FimPara

fimalgoritmo
