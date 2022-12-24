algoritmo "ParOuImparProcedimento"
var
   N: Inteiro

//Parâmetro não pode ser igual a variável, mas é possível em algumas linguagens
procedimento ParOuImpar(V: Inteiro)
inicio
   Se (V % 2 = 0) entao
      EscrevaL("O número", V, " é PAR")
   senao
        EscrevaL("O número", V, " é ÍMPAR")
   FimSe
fimprocedimento

inicio
   Escreva("Digite um número: ")
   Leia(N)

   ParOuImpar(N)
   //V não existe neste momento
   //EscrevaL("O valor de V é ", V)
   EscrevaL("O valor de N é", N)
fimalgoritmo
