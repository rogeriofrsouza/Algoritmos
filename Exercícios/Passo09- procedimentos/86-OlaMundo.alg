algoritmo "Ol�Mundo"
var
   opcao: Caractere

procedimento Gerador()
inicio
   LimpaTela
   Escreval("+------======------+")
   Escreval("  Ol�, Mundo!")
   Escreval("+------======------+")
fimprocedimento

inicio
   Escreval("Gostaria de escrever na tela? [S/N]")
   Leia(opcao)

   Se (opcao = "S") entao
      Gerador()
   senao
        LimpaTela
        Escreval("Ok, at� breve!")
   FimSe
fimalgoritmo
