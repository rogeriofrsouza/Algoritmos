algoritmo "Media"
var
   A, B: Inteiro
   M: Real
   
funcao Media(X, Y: Inteiro): Real
inicio
   Retorne (X + Y) / 2
fimfuncao

inicio
   Escreva("Digite a primeira nota: ")
   Leia(A)
   Escreva("Digite a segunda nota: ")
   Leia(B)
   
   M := Media(A, B)
   Escreval()
   Escreval("A média do aluno é", M)
fimalgoritmo
