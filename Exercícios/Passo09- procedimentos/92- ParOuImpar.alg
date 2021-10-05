algoritmo "ParOuImpar"
var
   N: Inteiro
   
Procedimento ParOuImpar(X: Inteiro)
inicio
      Se(X % 2 = 0) entao
          Escreval("O valor ", X, " é PAR!")
      senao
           Escreval("O valor ", X, " é ÍMPAR!")
      FimSe
FimProcedimento

inicio
      Escreva("Digite um número: ")
      Leia(N)

      ParOuImpar(N)
fimalgoritmo
