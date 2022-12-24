algoritmo "ConteAteOndeQuiser"
var
   valor, soma, contador: Inteiro
inicio
   Escreva("Quer contar de zero até quanto? ")
   Leia(valor)
   Escreva("Qual será o valor da soma? ")
   Leia(soma)

   contador <- 0
   Enquanto (contador <= valor) faca
            EscrevaL(contador)
            contador <- contador + soma
   FimEnquanto

   EscrevaL("Terminei de contar")
fimalgoritmo
