algoritmo "ParOuImpar"
var
   N: Inteiro
   R: Caractere

funcao ParOuImpar(V: Inteiro): Caractere
inicio
   Se (V % 2 = 0) entao
      Retorne "PAR"
   senao
        Retorne "�MPAR"
   Fimse
fimfuncao

inicio
   Escreva("Digite um n�mero: ")
   Leia(N)

   R <- ParOuImpar(N)

   Escreva("O n�mero", N, " � um valor ", R)
fimalgoritmo
