algoritmo "vetor30-random"
var
   vet: vetor[1..30] de Inteiro
   cont, num, i, j, resp1, Totresp1: Inteiro
   opcao, resp2: Caractere
   A: Logico

   
Procedimento Titulo()
Inicio
      LimpaTela
      Escreval("----------------------------")
      Escreval(" **JOGO  DA  MÃE  DE  NÁ**")
      Escreval("----------------------------")
      Escreval()
FimProcedimento

Procedimento Analise(Res: Inteiro)
var
   fim: Logico
Inicio
      fim <- falso
      Repita
          Se(Res <= 15) entao
              fim <- verdadeiro
          senao
               Escreval()
               Escreva("ERRO!! Digite um número entre 1 e 15: ")
               Leia(resp1)
               Res <- resp1
          FimSe
      Ate(fim = verdadeiro)
FimProcedimento

Procedimento MostraTela()
Inicio
      cont <- 1
      Para i <- 1 ate 6 faca
           Para j <- 1 ate 5 faca
                Escreva("| ", vet[cont]:3, " ")
                cont <- cont + 1
           FimPara
           Escreva("|")
           Escreval()
      FimPara
FimProcedimento

Funcao Procura(R: Inteiro): Inteiro
var
   TotR: Inteiro
Inicio
      TotR <- 0
      cont <- 1
      
      Para i <- 1 ate 6 faca
           Para j <- 1 ate 5 faca
                Se(vet[cont] = R) entao
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
FimFuncao

inicio
      Para cont <- 1 ate 30 faca
           num <- Randi(15): Inteiro
           vet[cont] <- num
      FimPara
      
      Titulo()
      Escreval("Olá! bem-vindo(a) ao mundo da adivinhação ._.")
      Escreval()
            
      Repita
            Escreval("Vou escolher trinta números inteiros entre 1 e 15, tente adivinhar um deles :)")
            Escreva("RESPOSTA: ")
            Leia(resp1)
            Analise(resp1)

            Escreval()
            Escreval("...Ok, você escolheu [", resp1:2, "]. Pressione ENTER para começar...")
            Leia(resp2)
            
            Titulo()
            MostraTela()

            Escreval()
            Escreva("Pressione ENTER novamente...")
            Leia(resp2)
            
            Titulo()
            Totresp1 <- Procura(resp1)
            Escreval()
            
            Se(TotResp1 > 3) entao
                Escreval("O número ", resp1, " apareceu ", Totresp1, " vezes")
                Escreval("Você é quase uma Mãe de Ná  o.o")
            senao
                 Se(Totresp1 >= 3) entao
                     Escreval("O número ", resp1, " apareceu ", Totresp1, " vezes :)")
                 senao
                      Se(Totresp1 = 1) entao
                          Escreval("O número ", resp1, " apareceu apenas uma vez :)")
                      senao
                           Se(Totresp1 = 0) entao
                               Escreval("O número ", resp1, " não apareceu nenhuma vez :(")
                           FimSe
                      FimSe
                 FimSe
            FimSe
            
            Escreval()
            Escreval("Quer continuar adivinhando? [S/N]")
            Leia(opcao)
            Titulo()
      Ate(opcao = "N")
      
      Titulo()
      Escreval("T E R M I N A N D O ...")
fimalgoritmo
