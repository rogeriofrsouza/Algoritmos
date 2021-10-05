algoritmo "Idade8"
var
   nome: vetor[1..9] de Caracter
   idade: vetor[1..9] de Inteiro
   c, opcao: Inteiro
   cliente: Caractere
   verif: Logico

Procedimento TrocaNome(var X: Inteiro; var Y: Caractere)
Inicio
      Escolha(X)
          Caso 1
               Y <- "Pedro"
          Caso 2
               Y <- "Joana"
          Caso 3
               Y <- "Rogério"
          Caso 4
               Y <- "Jéssica"
          Caso 5
               Y <- "Gaby"
          Caso 6
               Y <- "Fabiola"
          Caso 7
               Y <- "Fábio"
          Caso 8
               Y <- "Gustavo"
          Caso 9
               Y <- "Letícia"
      FimEscolha
FimProcedimento

Funcao Verificador(I: Inteiro): Logico
var
   fim: Logico
Inicio
      fim <- falso
      Se(I > 120) entao
           Escreval()
           Escreval("Opa, calma aí. Digite uma idade mais baixa :P")
           Escreval()
      senao
           fim <- verdadeiro
      FimSe
      Retorne fim
FimFuncao

Procedimento Menu()
Inicio
      LimpaTela
      Escreval("+-------=======------+")
      Escreval("       M E N U")
      Escreval("+-------=======------+")
      Escreval("[1] Exibir todos os clientes")
      Escreval("[2] Clientes menores de idade")
      Escreval("[3] Sair")
      Leia(opcao)
      Escreval()
FimProcedimento

Procedimento Listagem()
Inicio
      LimpaTela
      Escreval("~~~~~~~~:::::::~~~~~~~")
      Escreval("     LISTAGEM FINAL")
      Escreval("~~~~~~~~:::::::~~~~~~~")
      Escreval()
FimProcedimento

Procedimento Continuar()
var
   voltar: Inteiro
   continua: Logico
Inicio
      continua <- falso
      Repita
            Escreval()
            Escreval("[0] Voltar ao MENU: ")
            Escreval("[1] Sair")
            Leia(voltar)
      
            Se(voltar = 0) entao
                continua <- verdadeiro
            senao
                 Se(voltar = 1) entao
                     continua <- verdadeiro
                     opcao <- 3
                 senao
                      Escreval()
                      Escreva("ERRO: Digite um valor do MENU")
                 FimSe
            FimSe
      Ate(continua = verdadeiro)
FimProcedimento

Procedimento Final()
Inicio
      LimpaTela
      Escreval("~~~~~~<<<< FIM >>>>~~~~~~")
      Escreval()
      Escreval("S A I N D O ... :(")
      Escreval()
FimProcedimento

inicio
      cliente <- "João"
      
      Para c <- 1 ate 9 faca
           LimpaTela
           Escreval("----------------")
           Escreval("Cliente ", c)
           Escreval()
           Escreval("NOME: ", cliente)
           nome[c] <- cliente
           TrocaNome(c, cliente)
           
           Repita
                 Escreva("IDADE: ")
                 Leia(idade[c])
                 verif <- Verificador(idade[c])
           Ate(Verif = verdadeiro)
      FimPara

      Repita
            Menu()
            Escolha(opcao)
                Caso 1
                     Listagem()
                     Para c <- 1 ate 9 faca
                          Escreval(c, ". ", nome[c]:12, " | ", idade[c]:3, " anos")
                     FimPara
                Caso 2
                     Listagem()
                     Para c <- 1 ate 9 faca
                          Se(idade[c] < 18) entao
                              Escreval( c, ". ", nome[c]:12, " | ", idade[c]:3, " anos")
                          senao
                               Escreval(c, ".              |    ")
                          FimSe
                     FimPara
                Caso 3
                     Final()
                     fimalgoritmo
                OutroCaso
                     Escreval()
                     Escreva("ERRO: Digite um valor do MENU")
            FimEscolha
            
            Se(opcao = 1) ou (opcao = 2) entao
                Continuar()
            FimSe
      Ate(opcao = 3)
      
      Final()
fimalgoritmo
