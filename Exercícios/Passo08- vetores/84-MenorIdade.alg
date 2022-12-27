algoritmo "Idade8"
var
   nome: vetor[1..9] de Caracter
   idade: vetor[1..9] de Inteiro
   c, opcao: Inteiro
   cliente: Caractere
   verif: Logico

funcao VerificaIdade(I: Inteiro): Logico
var
   fim: Logico
inicio
   fim <- falso
   
   Se (I < 0) ou (I > 120) entao
      Escreval()
      Escreval("Opa, calma aí. Digite uma idade correta")
      Escreval()
   senao
        fim <- verdadeiro
   FimSe
   
   Retorne fim
fimfuncao

procedimento Titulo()
inicio
   LimpaTela
   Escreval("~~~~~~~~:::::::~~~~~~~")
   Escreval("     LISTAGEM")
   Escreval("~~~~~~~~:::::::~~~~~~~")
   Escreval()
fimprocedimento

inicio
   Para c <- 1 ate 9 faca
      LimpaTela
      Escreval("----------------")
      Escreval("Cliente ", c)
      Escreval()
      Escreva("NOME: ")
      Leia(nome[c])

      Repita
         Escreva("IDADE: ")
         Leia(idade[c])
         
         verif <- VerificaIdade(idade[c])
      Ate (verif = verdadeiro)
   FimPara

   LimpaTela
   
   Repita
      Escreval("+-------=======------+")
      Escreval("       M E N U")
      Escreval("+-------=======------+")
      Escreval("[1] Exibir todos os clientes")
      Escreval("[2] Clientes menores de idade")
      Escreval("[3] Sair")
      Leia(opcao)
      Escreval()
      
      LimpaTela
      
      Escolha(opcao)
          Caso 1
               Titulo()
               
               Para c <- 1 ate 9 faca
                    Escreval(c, ". ", nome[c]:12, " | ", idade[c]:3, " anos")
               FimPara
          Caso 2
               Titulo()
               
               Para c <- 1 ate 9 faca
                  Se (idade[c] < 18) entao
                     Escreval( c, ". ", nome[c]:12, " | ", idade[c]:3, " anos")
                  senao
                      Escreval(c, ".              |    ")
                  FimSe
               FimPara
          Caso 3
               Escreval("S A I N D O ...")
          OutroCaso
               Escreva("ERRO: Digite um valor do MENU")
      FimEscolha
      
      Escreval()
   Ate (opcao = 3)
fimalgoritmo
