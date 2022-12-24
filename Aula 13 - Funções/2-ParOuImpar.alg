algoritmo "ParOuImpar"
var
   N: Inteiro
   R: Caractere

funcao ParOuImpar(V: Inteiro): Caractere
inicio
   Se (V % 2 = 0) entao
      Retorne "PAR"
   senao
        Retorne "ÍMPAR"
   Fimse
fimfuncao

inicio
   Escreva("Digite um número: ")
   Leia(N)

   R <- ParOuImpar(N)

   Escreva("O número", N, " é um valor ", R)
fimalgoritmo
