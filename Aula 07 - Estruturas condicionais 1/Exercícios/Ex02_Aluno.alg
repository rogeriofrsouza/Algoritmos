algoritmo "Ex02"
var
   n1, n2, media: Real
inicio
   EscrevaL("--------------------------")
   EscrevaL("ESCOLA JAVALI CANSADO")
   EscrevaL("--------------------------")
   
   Escreva("Primeira nota: ")
   Leia(n1)
   Escreva("Segunda nota: ")
   Leia(n2)

   media <- (n1 + n2) / 2
   Escreval()
   
   EscrevaL("--------------------------")
   EscrevaL("Média: ", media:4:2)

   Se media >= 7 entao
      EscrevaL("Aluno aprovado")
   senao
        EscrevaL("Aluno reprovado")
   FimSe
   
   Escreva("--------------------------")
fimalgoritmo
