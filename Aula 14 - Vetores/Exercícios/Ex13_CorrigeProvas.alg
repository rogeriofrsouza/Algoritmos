algoritmo "Ex13"
var
   i, j: Inteiro
   gab: vetor [1..5] de Caractere
   nome: vetor [1..3] de Caractere
   nota: vetor [1..3] de Real
   ntot, m: Real
   resp: Caractere
inicio
   ntot <- 0

   Escreval("Cadastro de Gabarito")
   Escreval("--------------------------------")

   Para i <- 1 ate 5 faca
        Escreva("Questão", i, ": ")
        Leia(gab[i])
   FimPara
   
   LimpaTela

   Para i <- 1 ate 3 faca
        Escreval("----------------")
        Escreval("ALUNO", i)
        Escreval("----------------")
        
        Escreva("Nome: ")
        Leia(nome[i])

        Escreval("RESPOSTAS DADAS")
        Para j <- 1 ate 5 faca
             Escreva("Questão", j, ": ")
             Leia(resp)

             Se (resp = gab[j]) entao
                nota[i] <- nota[i] + 2
             FimSe
        FimPara

        ntot <- ntot + nota[i]
        LimpaTela
   FimPara

   Escreval("NOTAS FINAIS")
   Escreval("-------------------")
   
   Para i <- 1 ate 3 faca
        Escreval(nome[i]:15, nota[i]:4:1)
   FimPara

   Escreval("-------------------")
   m <- ntot / 3
   Escreval("Média da Turma:", m:4:1)
fimalgoritmo
