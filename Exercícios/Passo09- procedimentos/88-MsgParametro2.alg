algoritmo "MsgParametro2"
var
   opcao, msg: Caractere
   rep: Inteiro

procedimento Gerador(T: Caractere; R: Inteiro)
var
   C: Inteiro
inicio
   Escreval()
   Escreval("+-------=======-------+")
   
   Para C <- 1 ate rep faca
        Escreval(T)
   FimPara
   
   Escreval("+-------=======-------+")
fimprocedimento

inicio
   Escreval("Gostaria de escrever na tela? [S/N]")
   Leia(opcao)
   Escreval()
   
   Se (opcao <> "S") entao
      Escreval("Ok, até breve!")
      fimalgoritmo
   FimSe

   Escreval("Quantas vezes?")
   Leia(rep)
   Escreval()

   Escreval("Qual mensagem quer escrever? ")
   leia(msg)
   
   Gerador(msg, rep)
fimalgoritmo
