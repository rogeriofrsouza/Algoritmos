algoritmo "Maior"
var
   n1, n2: Inteiro
   
procedimento Maior(A, B: Inteiro)
var
   Mai: Inteiro
inicio
   Se (A > B) entao
      Mai <- A
   senao
        Se (B > A) entao
             Mai <- B
        senao
             Escreval()
             Escreval("Os dois n�meros s�o iguais!!")
             fimalgoritmo
        FimSe
   FimSe
   
   Escreval()
   Escreval(Mai, " � o maior valor")
fimprocedimento

inicio
   Escreva("Digite um n�mero: ")
   Leia(n1)
   Escreva("Digite outro n�mero: ")
   Leia(n2)
   
   Maior(n1, n2)
fimalgoritmo
