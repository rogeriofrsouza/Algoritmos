algoritmo "OláMundo"
var
   opcao: Caractere

Procedimento Gerador()
Inicio
      LimpaTela
      Escreval("+------======------+")
      Escreval("  Olá, Mundo!")
      Escreval("+------======------+")
FimProcedimento

inicio
      Escreval("Gostaria de escrever na tela? [S/N]")
      Leia(opcao)

      Se(opcao = "S") entao
           Gerador()
      senao
           LimpaTela
           Escreval("Ok, até breve :(")
      FimSe
fimalgoritmo
