algoritmo "aluno_status"
var
   N1, N2, M: Real
inicio
   Escreva("Primeira nota: ")
   Leia(N1)
   Escreva("Segunda nota: ")
   Leia(N2)

   M <- (N1 + N2) / 2
   EscrevaL("A m�dia do aluno foi ", M:4:2)

   Se (M >= 7) entao
      EscrevaL("Aluno APROVADO")
   senao
       Se (M >= 5) e (M < 7) entao
           EscrevaL("Aluno em RECUPERA��O")
       senao
            EscrevaL("Aluno REPROVADO")
       FimSe
   FimSe
fimalgoritmo
