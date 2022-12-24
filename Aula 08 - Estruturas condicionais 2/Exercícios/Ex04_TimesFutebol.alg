algoritmo "Ex04"
var
   gB, gM, D: Real
inicio
   EscrevaL("------------------------")
   EscrevaL("BANGU x MADUREIRA")
   EscrevaL("------------------------")
   
   Escreva("Quantos gols do BANGU? ")
   Leia(gB)
   Escreva("Quantos gols do MADUREIRA? ")
   Leia(gM)
   
   Se (gB < 0) ou (gM < 0) entao
      fimalgoritmo
   FimSe
   
   D <- Abs(gB - gM)
   Escreval()
   
   EscrevaL("------------------------")
   EscrevaL("Diferença:", D)

   Escolha (D)
           Caso 0
                EscrevaL("Status: EMPATE")
           Caso 1, 2, 3
                EscrevaL("Status: JOGO NORMAL")
           Caso 4, 5, 6, 7, 8, 9, 10
                EscrevaL("Status: GOLEADA")
           OutroCaso
                EscrevaL("Tem algo errado aqui, digite os gols novamente.")
   FimEscolha
   
   EscrevaL("------------------------")
fimalgoritmo
