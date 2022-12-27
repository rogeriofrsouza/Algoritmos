algoritmo "ParOuImpar"
var
   N: Inteiro
   
procedimento ParOuImpar(X: Inteiro)
inicio
   Se (X % 2 = 0) entao
       Escreval("O valor", X, " é PAR!")
   senao
        Escreval("O valor", X, " é ÍMPAR!")
   FimSe
fimprocedimento

inicio
   Escreva("Digite um número: ")
   Leia(N)
   Escreval()

   ParOuImpar(N)
fimalgoritmo
