algoritmo "vetor30-random"
var
   vet: vetor[1..30] de Inteiro
   cont, i, j, resp1, Totresp1: Inteiro
   opcao, resp2: Caractere
   A: Logico

procedimento Titulo()
inicio
   LimpaTela
   Escreval("----------------------------")
   Escreval("**JOGO  DA  MÃE  DE  NÁ**")
   Escreval("----------------------------")
   Escreval()
fimprocedimento

procedimento AnalisaResposta(Res: Inteiro)
var
   fim: Logico
inicio
   fim <- falso
   
   Repita
      Se (Res > 0) e (Res <= 15) entao
        fim <- verdadeiro
      senao
         Escreval()
         Escreva("ERRO!! Digite um número entre 1 e 15: ")
         Leia(resp1)
         Res <- resp1
      FimSe
   Ate (fim = verdadeiro)
fimprocedimento

procedimento MostraTela()
inicio
   cont <- 1
   
   Para i <- 1 ate 6 faca
      Para j <- 1 ate 5 faca
          Escreva("| ", vet[cont]:3, " ")
          cont <- cont + 1
      FimPara
      Escreva("|")
      Escreval()
   FimPara
fimprocedimento

funcao ProcuraResposta(R: Inteiro): Inteiro
var
   TotR: Inteiro
inicio
   TotR <- 0
   cont <- 1

   Para i <- 1 ate 6 faca
      Para j <- 1 ate 5 faca
          Se (vet[cont] = R) entao
              Escreva("| ", vet[cont]:3, " ")
              TotR <- TotR + 1
          senao
               Escreva("|     ")
          FimSe
          
          cont <- cont + 1
      FimPara
      Escreva("|")
      Escreval()
   FimPara
   
   Retorne TotR
fimfuncao

inicio
   Para cont <- 1 ate 30 faca
      vet[cont] <- Randi(15): Inteiro
   FimPara

   Titulo()
   Escreval("Olá! bem-vindo(a) ao mundo da adivinhação")
   Escreval()

   Repita
      Escreval("Vou escolher trinta números inteiros entre 1 e 15, tente adivinhar um deles :)")
      Escreva("RESPOSTA: ")
      Leia(resp1)
      AnalisaResposta(resp1)

      Escreval()
      Escreval("...Ok, você escolheu [", resp1:2, "]. Pressione ENTER para começar...")
      Leia(resp2)

      Titulo()
      MostraTela()

      Escreval()
      Escreva("Pressione ENTER novamente...")
      Leia(resp2)

      Titulo()
      Totresp1 <- ProcuraResposta(resp1)
      Escreval()

      Se (Totresp1 = 0) entao
          Escreval("O número", resp1, " não apareceu nenhuma vez :(")
      senao
         Se (Totresp1 = 1) entao
           Escreval("O número", resp1, " apareceu apenas uma vez :)")
         senao
            Se (Totresp1 > 1) entao
               Escreval("O número", resp1, " apareceu", Totresp1, " vezes :)")

               Se (TotResp1 > 3) entao
                   Escreval("Parabéns, você é quase uma Mãe de Ná!")
               FimSe
            FimSe
         FimSe
      FimSe

      Escreval()
      Escreval("Quer continuar adivinhando? [S/N]")
      Leia(opcao)
      
      Titulo()
   Ate(opcao = "N")

   Escreval("T E R M I N A N D O ...")
fimalgoritmo
