algoritmo "ConteAteOndeQuiser"
var
   valor, soma, contador: Inteiro
inicio
   Escreva("Quer contar de zero at� quanto? ")
   Leia(valor)
   Escreva("Qual ser� o valor da soma? ")
   Leia(soma)

   contador <- 0
   Enquanto (contador <= valor) faca
            EscrevaL(contador)
            contador <- contador + soma
   FimEnquanto

   EscrevaL("Terminei de contar")
fimalgoritmo
