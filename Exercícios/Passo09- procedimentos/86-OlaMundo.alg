algoritmo "OláMundo"
var
   opcao: Caractere

procedimento Gerador()
inicio
   LimpaTela
   Escreval("+------======------+")
   Escreval("  Olá, Mundo!")
   Escreval("+------======------+")
fimprocedimento

inicio
   Escreval("Gostaria de escrever na tela? [S/N]")
   Leia(opcao)

   Se (opcao = "S") entao
      Gerador()
   senao
        LimpaTela
        Escreval("Ok, até breve!")
   FimSe
fimalgoritmo
