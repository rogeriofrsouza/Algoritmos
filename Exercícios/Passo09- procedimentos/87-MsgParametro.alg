algoritmo "MsgParametro"
var
   opcao, msg: Caractere

Procedimento Gerador(P: Caractere)
Inicio
      Escreval()
      Escreval("+------======------+")
      Escreval("  ", P)
      Escreval("+------======------+")
FimProcedimento

inicio
      Escreval("Gostaria de escrever na tela? [S/N]")
      Leia(opcao)
      Escreval()
      
      Se(opcao = "S") entao
           Escreval("Qual mensagem quer escrever? ")
           leia(msg)
           Gerador(msg)
      senao
           Escreval()
           Escreval("Ok, até breve :(")
      FimSe
fimalgoritmo
