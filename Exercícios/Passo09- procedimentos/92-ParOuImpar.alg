algoritmo "ParOuImpar"
var
   N: Inteiro
   
procedimento ParOuImpar(X: Inteiro)
inicio
   Se (X % 2 = 0) entao
       Escreval("O valor", X, " � PAR!")
   senao
        Escreval("O valor", X, " � �MPAR!")
   FimSe
fimprocedimento

inicio
   Escreva("Digite um n�mero: ")
   Leia(N)
   Escreval()

   ParOuImpar(N)
fimalgoritmo
