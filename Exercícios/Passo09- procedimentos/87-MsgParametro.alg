algoritmo "MsgParametro"
var
   opcao, msg: Caractere

procedimento Gerador(P: Caractere)
inicio
   Escreval()
   Escreval("+------======------+")
   Escreval("", P)
   Escreval("+------======------+")
fimprocedimento

inicio
   Escreval("Gostaria de escrever na tela? [S/N]")
   Leia(opcao)
   Escreval()

   Se (opcao = "S") entao
      Escreval("Qual mensagem quer escrever? ")
      leia(msg)
      Gerador(msg)
   senao
        Escreval()
        Escreval("Ok, at� breve!")
   FimSe
fimalgoritmo
