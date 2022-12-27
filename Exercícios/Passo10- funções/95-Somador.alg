algoritmo "Somador"
var
   A, B, S: Inteiro
   
funcao Somador(X, Y: Inteiro): Inteiro
inicio
   Retorne X + Y
fimfuncao

inicio
   Escreva("Digite um número: ")
   Leia(A)
   Escreva("Digite outro número: ")
   Leia(B)

   S <- Somador(A, B)
   Escreval("A soma entre", A, " e", B, " é =", S)
fimalgoritmo
