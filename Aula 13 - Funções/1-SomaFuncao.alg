algoritmo "SomaFuncao"
var
   V1, V2, S: Inteiro
   
funcao Soma(X, Y: Inteiro): Inteiro
inicio
   Retorne X + Y
fimfuncao

inicio
   Escreva("Digite o primeiro valor: ")
   Leia(V1)
   Escreva("Digite o segundo valor: ")
   Leia(V2)

   S <- Soma(V1, V2)

   EscrevaL("A soma entre", V1, " e", V2, " � igual a", S)
fimalgoritmo
