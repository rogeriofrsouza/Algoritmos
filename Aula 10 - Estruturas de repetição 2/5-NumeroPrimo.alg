algoritmo "NúmeroPrimo"
var
   C, N, ContDiv: Inteiro
inicio
   C <- 2
   ContDiv <- 0

   Escreva("Digite um número: ")
   Leia(N)

   Repita
         Se (N % C = 0) entao
            ContDiv <- ContDiv + 1
         FimSe

         C <- C + 1
   Ate (C > N)
   
   //EscrevaL("Ao todo existem ", ContDiv, " valores divisíveis.")

   Se(ContDiv > 1) entao
        EscrevaL("O valor", N, " NÃO É primo")
   senao
        EscrevaL("O valor", N, " É primo")
   FimSe
fimalgoritmo
