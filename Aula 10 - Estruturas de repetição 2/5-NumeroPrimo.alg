algoritmo "N�meroPrimo"
var
   C, N, ContDiv: Inteiro
inicio
   C <- 2
   ContDiv <- 0

   Escreva("Digite um n�mero: ")
   Leia(N)

   Repita
         Se (N % C = 0) entao
            ContDiv <- ContDiv + 1
         FimSe

         C <- C + 1
   Ate (C > N)
   
   //EscrevaL("Ao todo existem ", ContDiv, " valores divis�veis.")

   Se(ContDiv > 1) entao
        EscrevaL("O valor", N, " N�O � primo")
   senao
        EscrevaL("O valor", N, " � primo")
   FimSe
fimalgoritmo
