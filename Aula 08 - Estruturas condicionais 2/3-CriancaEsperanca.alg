algoritmo "Crin�aEsperan�a"
var
   D: Inteiro
   Valor: Real
inicio
   EscrevaL("----------------------")
   EscrevaL("CRIAN�A ESPERAN�A")
   EscrevaL("----------------------")
   EscrevaL("Muito obrigado por ajudar")
   EscrevaL("[1] Doar R$10")
   EscrevaL("[2] Doar R$25")
   Escreval("[3] Doar R$50")
   EscrevaL("[4] Doar outros valores")
   EscrevaL("[0] Cancelar")
   Leia(D)

   Escolha D
      Caso 1
          Valor <- 10
      Caso 2
          Valor <- 25
      Caso 3
          Valor <- 50
      Caso 4
          Escreva("Qual o valor da doa��o? R$")
          Leia(Valor)
      Caso 0
          Valor <- 0
    FimEscolha

    Se (Valor = 0) entao
       EscrevaL("Sua doa��o foi cancelada :(")
    senao
         EscrevaL("---------------------------")
         EscrevaL("Sua doa��o foi de R$", Valor:5:2)
         EscrevaL("Muito obrigado!")
         EscrevaL("---------------------------")
    FimSe
fimalgoritmo
