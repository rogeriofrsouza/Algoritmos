algoritmo "AnalisadorStrings"
var
   N: Caractere
   C: Inteiro
inicio
   Escreva("Digite um nome: ")
   Leia(N)

   Escreval()
   EscrevaL("Total de letras do seu nome:", Compr(N))
   EscrevaL("Seu nome em maiúsculas é ", Maiusc(N))
   EscrevaL("Seu nome em minúsculas é ", Minusc(N))
   EscrevaL("A primeira letra do seu nome é ", Copia(Maiusc(N), 1, 1))
   
   Escreval()
   EscrevaL("A última letra do seu nome é ", Copia(Maiusc(N), Compr(N), 1))
   EscrevaL("Seu nome tem a letra A na posição", Pos("A", Maiusc(N)))
   EscrevaL("O código da letra A é", Asc("A"))
   EscrevaL("A letra de código 65 é ", Carac(65))

   Escreval()
   C <- 0
   
   Para C <- Compr(N) ate 1 passo -1 faca
        Escreva(Copia(Maiusc(N), C, 1))
   FimPara
fimalgoritmo
