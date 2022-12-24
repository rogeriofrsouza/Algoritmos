algoritmo "MsgParametro2"
var
   opcao, msg: Caractere
   rep: Inteiro

Procedimento Gerador(P: Caractere; R: Inteiro)
var
   C: Inteiro
Inicio
      Escreval()
      Escreval("+-------=======-------+")
      Para C <- 1 ate rep faca
           Escreval("  ", P)
      FimPara
      Escreval("+-------=======-------+")
FimProcedimento

inicio
      Escreval("Gostaria de escrever na tela? [S/N]")
      Leia(opcao)
      Se(opcao <> "S") entao
          Escreval()
          Escreval("Ok, até breve :(")
          fimalgoritmo
      FimSe
      
      Escreval("Quantas vezes?")
      Leia(rep)
      Escreval()
      
      Escreval("Qual mensagem quer escrever? ")
      leia(msg)
      Gerador(msg, rep)
fimalgoritmo
