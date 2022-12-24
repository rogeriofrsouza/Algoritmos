algoritmo "Maior"
var
   n1, n2: Inteiro
   
Procedimento Maior(A, B: Inteiro)
var
   Mai: Inteiro
inicio
      Se(A > B) entao
           Mai <- A
      senao
           Se(B > A) entao
                Mai <- B
           senao
                Escreval()
                Escreval("Os dois números são iguais!!")
                fimalgoritmo
           FimSe
      FimSe
      Escreval()
      Escreval(Mai, " é o maior valor")
FimProcedimento

inicio
      Escreva("Digite um número: ")
      Leia(n1)
      Escreva("Digite outro número: ")
      Leia(n2)
      Maior(n1, n2)
fimalgoritmo
