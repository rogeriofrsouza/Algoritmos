algoritmo "Ex12"
var
   time: vetor[1..3] de Caractere
   c, d: Inteiro
inicio
      EscrevaL("----------------------")
      EscrevaL(" CAMPEONATO FUTEBOL")
      EscrevaL("----------------------")
      
      Para c <- 1 ate 3 faca
           Escreva("Nome do ", c, " o. time: ")
           Leia(time[c])
      FimPara
      
      LimpaTela
      EscrevaL("------------------------")
      Escreval("  TABELA DE PARTIDAS")
      EscrevaL("------------------------")
      
      Para c <- 1 ate 3 faca
           Para d <- 1 ate 3 faca
           Se (c <> d) entao
              EscrevaL(time[c]:15, "[ ] x [ ] ", time[d]:15)
           FimSe
           FimPara
      FimPara
fimalgoritmo
