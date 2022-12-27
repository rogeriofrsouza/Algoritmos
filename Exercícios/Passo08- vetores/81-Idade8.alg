algoritmo "Idade8"
var
   nome: vetor[1..8] de Caracter
   idade, Maior25, SoMaiorId: vetor[1..8] de Inteiro
   c, TotId, MaiorId, aux1, aux2: Inteiro
   Media: Real
   Verif: Logico
   
funcao Verificador(I: Inteiro): Logico
var
   fim: Logico
inicio
   fim <- falso
   
   Se (I >= 0) e (I <= 120) entao
      fim <- verdadeiro
   senao
        Escreval()
        Escreval("Opa, calma aí. Digite uma idade mais baixa")
        Escreval()
   FimSe
   
   Retorne fim
fimfuncao
   
inicio
   TotId <- 0
   aux1 <- 1
   MaiorId <- 0
   aux2 <- 1

   Para c <- 1 ate 8 faca
      LimpaTela
      Escreval("----------------")
      Escreval("Cliente", c)
      Escreval()
      Escreva("NOME: ")
      Leia(nome[c])

      Repita
         Escreva("IDADE: ")
         Leia(idade[c])
         
         Verif <- Verificador(idade[c])
      Ate (Verif = verdadeiro)

      //a)Calcular a média
      TotId <- TotId + idade[c]

      //b)Posições de +25 anos
      Se (idade[c] > 25) entao
         Maior25[aux1] <- c
         aux1 <- aux1 + 1
      FimSe

      //c)Maior idade e d)sua posição
      Se (idade[c] > MaiorId) entao
         MaiorId <- idade[c]
      FimSe
   FimPara

   LimpaTela
   Escreval("-----------------")
   Escreval("LISTAGEM FINAL")
   Escreval("-----------------")
   Escreval()
   Escreval("N O M E          | I D A D E")

   Para c <- 1 ate 8 faca
        Escreval(c, ". ", nome[c]:12, " | ", idade[c]:3, " anos")
   FimPara

   Media <- TotId / 8
   aux1 <- aux1 - 1
   Escreval()

   Escreval("a) A média de idade é: ", Media:4:1)
   Escreva("b) Temos", aux1, " pessoas com mais de 25 anos nas posições:")

   Para c <- 1 ate aux1 faca
      Se (c = aux1) entao
         Escreva(Maior25[c])
      senao
         Escreva(Maior25[c], ", ")
      FimSe
   FimPara

   Para c <- 1 ate 8 faca
      Se (idade[c] = MaiorId) entao
         SoMaiorId[aux2] <- c
         aux2 <- aux2 + 1
      FimSe
   FimPara
   
   aux2 <- aux2 - 1

   Escreval()
   Escreval("c) A maior idade digitada foi:", MaiorId)
   
   Se (aux2 > 1) entao
      Escreva("d) Os clientes com", MaiorId, " anos estão nas posições:")
   senao
        Se (aux2 = 1) entao
            Escreva("d) O cliente com", MaiorId, " anos está na posição:")
        FimSe
   FimSe

   Para c <- 1 ate aux2 faca
      Se (c = aux2) entao
         Escreva(SoMaiorId[c])
      senao
          Escreva(SoMaiorId[c], ",")
      FimSe
   FimPara
fimalgoritmo
