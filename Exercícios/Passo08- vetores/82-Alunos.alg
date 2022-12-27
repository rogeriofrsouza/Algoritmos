algoritmo "10alunos"
var
   aluno: vetor[1..10] de Caracter
   nota, posicaoMnota: vetor[1..10] de Real
   c, aux, acimaMed: Inteiro
   MaiorNota, Media: Real
   nome, T: Caractere
   A: Logico
   
procedimento Titulo()
inicio
   LimpaTela
   Escreval("----------------------")
   Escreval("Escola TABAJARA")
   Escreval("----------------------")
   Escreval()
fimprocedimento

funcao AnalisaNota(X: Real): Logico
var
   fim: Logico
inicio
   fim <- falso
   
   Se (X < 0) ou (X > 10) entao
      Escreval("ERRO: Digite uma nota entre 0 e 10")
      Escreval()
   senao
        fim <- verdadeiro
   FimSe
   
   Retorne fim
fimfuncao

procedimento Posicao()
inicio

fimprocedimento

inicio
   Media <- 0
   MaiorNota <- 0
   acimaMed <- 0
   aux <- 1

   Para c <- 1 ate 10 faca
      Titulo()
      Escreval("Aluno", c)
      Escreval()
      Escreval("NOME: ")
      Leia(aluno[c])

      Repita
         Escreva("NOTA: ")
         Leia(nota[c])
         A <- AnalisaNota(nota[c])
      Ate (A = verdadeiro)

      Media <- Media + nota[c]

      //c) Maior nota
      Se (nota[c] > MaiorNota) entao
         MaiorNota <- nota[c]
      FimSe
   FimPara

   //a) Calcular a média
   Media <- Media / 10

   //b) Alunos acima da média
   Para c <- 1 ate 10 faca
      Se (nota[c] > Media) entao
         acimaMed <- acimaMed + 1
      FimSe

      //d) Posição da maior nota
      Se (nota[c] = MaiorNota) entao
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
   Escreval("c) Maior nota:", MaiorNota)

   aux <- aux - 1
   Escreva("d) Maior nota aparece ")
   
   Se (aux > 1) entao
      Escreva("nas posições:")
   senao
        Escreva("na posição:")
   FimSe
   
   Para c <- 1 ate aux faca
      Se(c = aux) entao
          Escreva(posicaoMnota[c])
      senao
          Escreva(posicaoMnota[c], ",")
      FimSe
   FimPara
fimalgoritmo
