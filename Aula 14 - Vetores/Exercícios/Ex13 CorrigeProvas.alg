algoritmo "Ex13"
var
   cont1, cont2: Inteiro
   gab, resp: vetor [1..5] de Caractere
   nome: vetor [1..3] de Caractere
   nota: vetor [1..3] de Real
   ntot, m: Real
inicio
      ntot <- 0
      
      EscrevaL("  Cadastro de Gabarito")
      EscrevaL("--------------------------------")

      Para cont1 <- 1 ate 5 faca
           Escreva("Questão ", cont1, ": ")
           Leia(gab[cont1])
      FimPara
      LimpaTela
      
      Para cont1 <- 1 ate 3 faca
           EscrevaL("----------------")
           EscrevaL(" ALUNO ", cont1)
           EscrevaL("----------------")
           Escreva("Nome: ")
           Leia(nome[cont1])

           EscrevaL("RESPOSTAS DADAS")
           Para cont2 <- 1 ate 5 faca
                Escreva("Questão ", cont2, ": ")
                Leia(resp[cont2])
                
                Se (resp[cont2] = gab[cont2]) entao
                   nota[cont1] <- nota[cont1] + 2
                FimSe
           FimPara

           ntot <- ntot + nota[cont1]
           //nomef[cont1] <- nome[cont1]
           LimpaTela
      FimPara
      
      EscrevaL(" NOTAS FINAIS")
      EscrevaL("----------------")
      Para cont1 <- 1 ate 3 faca
           EscrevaL(nome[cont1]:15, nota[cont1]:4:1)
      FimPara

      EscrevaL("----------------")
      m <- ntot / 3
      EscrevaL("Média da Turma: ", m:4:1)
fimalgoritmo
