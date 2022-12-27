algoritmo "Funcionarios"
var
   nome, sexo: vetor[1..5] de Caracter
   salario: vetor[1..5] de Real
   c, opcao: Inteiro

funcao Verificador(I: Inteiro): Logico
var
   fim: Logico
inicio
   fim <- falso

   Se (I < 0) ou (I > 120) entao
        Escreval()
        Escreval("Opa, calma ai. Digite uma idade correta")
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
   Para c <- 1 ate 5 faca
      LimpaTela
      Escreval("----------------")
      Escreval("Funcionário", c)
      Escreval()
      
      Escreva("NOME: ")
      Leia(nome[c])

      Escreva("SEXO [M/F]: ")
      
      Repita
         Leia(sexo[c])
      Ate (sexo[c] = "M") ou (sexo[c] = "F")
      
      Escreva("SALÁRIO: R$")
      Leia(salario[c])
   FimPara

   LimpaTela
   
   Repita
      Escreval("+-------=======------+")
      Escreval("       M E N U")
      Escreval("+-------=======------+")
      Escreval("[1] Exibir todos os funcionários")
      Escreval("[2] Funcionárias que ganham mais de R$5 mil")
      Escreval("[3] Funcionários que ganham mais de R$2 mil")
      Escreval("[4] Sair")
      Leia(opcao)
      Escreval()

      LimpaTela
      
      Escolha(opcao)
         Caso 1
            Titulo()
            
            Para c <- 1 ate 5 faca
                 Escreval(c, ". ", nome[c]:12, "| ", sexo[c], " | R$", salario[c]:7:2)
            FimPara
         Caso 2
            Titulo()
            
            Para c <- 1 ate 5 faca
               Se (sexo[c] = "F") e (salario[c] > 5000) entao
                  Escreval(c, ". ", nome[c]:12, "| ", sexo[c], " | R$", salario[c]:7:2)
               senao
                   Escreval(c, ".             |   | ")
               FimSe
            FimPara
         Caso 3
            Titulo()

            Para c <- 1 ate 5 faca
               Se (sexo[c] = "M") e (salario[c] > 2000) entao
                  Escreval(c, ". ", nome[c]:12, "| ", sexo[c], " | R$", salario[c]:7:2)
               senao
                   Escreval(c, ".             |   | ")
               FimSe
            FimPara
         Caso 4
            Escreval("S A I N D O ... ")
         OutroCaso
            Escreva("ERRO: Digite um valor do MENU")
            Escreval()
      FimEscolha
      
      Escreval()
   Ate(opcao = 4)
fimalgoritmo
