algoritmo "10alunos"
var
   aluno: vetor[1..10] de Caracter
   nota, posicaoMnota: vetor[1..10] de Real
   c, aux, acimaMed: Inteiro
   TotMed, MaiorNota, Media: Real
   nome, T: Caractere
   A: Logico
   
Procedimento Titulo()
Inicio
      LimpaTela
      Escreval("----------------------")
      Escreval("  Escola TABAJARA")
      Escreval("----------------------")
      Escreval()
FimProcedimento
   
Funcao TrocaNome(var N: Caractere): Caractere
Inicio
      Escolha(c)
           Caso 1
                N <- "Pedro"
           Caso 2
                N <- "Joaquim"
           Caso 3
                N <- "Ana"
           Caso 4
                N <- "Joana"
           Caso 5
                N <- "Paula"
           Caso 6
                N <- "Jéssica"
           Caso 7
                N <- "Isabela"
           Caso 8
                N := "Rogério"
           Caso 9
                N := "Guilherme"
           Caso 10
                N := "Bruno"
      FimEscolha
      Retorne N
FimFuncao

Funcao Analise(X: Real): Logico
var
   fim: Logico
Inicio
      fim <- falso
      Se(X < 0) ou (X > 10) entao
          Escreval("ERRO: Digite uma nota entre 0 e 10")
          Escreval()
      senao
           fim <- verdadeiro
      FimSe
      Retorne fim
FimFuncao

Procedimento Posicao()
Inicio
      Para c <- 1 ate aux faca
           Se(c = aux) entao
                Escreva(posicaoMnota[c])
           senao
                Escreva(posicaoMnota[c], ", ")
           FimSe
      FimPara
FimProcedimento

inicio
      TotMed <- 0
      aux <- 1
      nome <- "João"
      acimaMed <- 0
      
      Para c <- 1 ate 10 faca
           Titulo()
           Escreval("Aluno ", c)
           Escreval()
           Escreval("NOME: ", nome)
           aluno[c] <- nome
           T <- TrocaNome(nome)
           
           Repita
               Escreva("NOTA: ")
               Leia(nota[c])
               A <- Analise(nota[c])
           Ate(A = verdadeiro)
           
           TotMed <- TotMed + nota[c]
           
           //c) Maior nota
           Se(nota[c] > MaiorNota) entao
               MaiorNota <- nota[c]
           FimSe
      FimPara

      //a) Calcular a média
      Media <- TotMed / 10
      
      //b) Alunos acima da média
      Para c <- 1 ate 10 faca
           Se(nota[c] > Media) entao
               acimaMed <- acimaMed + 1
           FimSe
           
           //d) Posição da maior nota
           Se(nota[c] = MaiorNota) entao
               posicaoMnota[aux] <- c
               aux <- aux + 1
           FimSe
      FimPara
      
      Titulo()
      Escreval("    ALUNOS          |  NOTAS")
      Para c <- 1 ate 10 faca
           Escreval(c:2, ". ", aluno[c]:15, " | ", nota[c])
      FimPara
      
      Escreval()
      Escreval("a) Média da turma: ", Media:2:1)
      Escreval("b)", acimaMed, " alunos acima da média")
      Escreval("c) Maior nota: ", MaiorNota)

      aux <- aux - 1
      Escreva("d)", MaiorNota, " aparece ")
      Se(aux > 1) entao
           Escreva("nas posições: ")
      senao
           Se(aux = 1) entao
               Escreva("na posição: ")
           FimSe
      FimSe
           Posicao()
      Escreval()
fimalgoritmo
