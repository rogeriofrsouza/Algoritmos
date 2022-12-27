algoritmo "nomes-ordem-inversa"
var
   vet: vetor[1..7] de Caractere
   cont: Inteiro
inicio
   Para cont <- 1 ate 7 faca
      Escreva("Digite o ", cont, "o. nome: ")
      Leia(vet[cont])
   FimPara
   
   Escreval()
   Escreval("---------------------------------")
   
   Para cont <- 7 ate 1 passo -1 faca
      Escreval(cont, "o. ", vet[cont])
   FimPara
fimalgoritmo
