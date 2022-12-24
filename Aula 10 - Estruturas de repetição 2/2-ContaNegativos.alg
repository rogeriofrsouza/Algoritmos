algoritmo "ContaNegativos"
var
   N, C, TotN: Inteiro
inicio
   TotN <- 0

   C <- 1
   Repita
         Escreva("Digite um número: ")
         Leia(N)

         Se (N < 0) entao
            TotN <- TotN + 1
         FimSe

         C <- C + 1
   Ate(C > 5)

   Escreval()
   Se(TotN > 1) entao
        EscrevaL("Foram digitados", TotN, " valores negativos.")
   senao
        Se(TotN = 1) entao
             EscrevaL("Foi digitado", TotN, " valor negativo.")
        senao
             EscrevaL("Não foi digitado nenhum valor negativo.")
        FimSe
   FimSe
fimalgoritmo
