algoritmo "ParOuImparProcedimento"
var
   N: Inteiro

//Par�metro n�o pode ser igual a vari�vel, mas � poss�vel em algumas linguagens
procedimento ParOuImpar(V: Inteiro)
inicio
   Se (V % 2 = 0) entao
      EscrevaL("O n�mero", V, " � PAR")
   senao
        EscrevaL("O n�mero", V, " � �MPAR")
   FimSe
fimprocedimento

inicio
   Escreva("Digite um n�mero: ")
   Leia(N)

   ParOuImpar(N)
   //V n�o existe neste momento
   //EscrevaL("O valor de V � ", V)
   EscrevaL("O valor de N �", N)
fimalgoritmo
