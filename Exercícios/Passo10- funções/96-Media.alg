algoritmo "Media"
var
   A, B: Inteiro
   M: Real
   
Funcao Media(X, Y: Inteiro): Real
var
   Z: Real
inicio
      Z := (X + Y)/ 2
      Retorne Z
FimFuncao

inicio
      Escreva("Digite a primeira nota: ")
      Leia(A)
      Escreva("Digite a segunda nota: ")
      Leia(B)
      
      M := Media(A, B)
      Escreval("A média do aluno é ", M)
fimalgoritmo
