algoritmo "Somador"
var
   N, S: Inteiro
   resp: Caractere
inicio
   S <- 0

   Repita
         Escreva("Digite o valor ==> ")
         Leia(N)

         S <- S + N
         
         Escreva("Voc� quer continuar? [S/N] ")
         Leia(resp)
         
         Escreval()
   Ate(resp = "N")

   EscrevaL("A soma de todos os valores digitados �", S)
fimalgoritmo
