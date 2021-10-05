algoritmo "MsgParametro3"
var
   opcao, msg: Caractere
   rep, c, bor: Inteiro
   bordas: vetor[1..3] de Caractere
   
Procedimento Gerador(P: Caractere; R: Inteiro; B: Inteiro)
var
   C: Inteiro
Inicio
      LimpaTela
      Escreval(bordas[B])
      Para C <- 1 ate rep faca
           Escreval("  ", P)
      FimPara
      Escreval(bordas[B])
FimProcedimento

inicio
      bordas[1] <- "+-------=======-------+"
      bordas[2] <- "~~~~~~~~:::::::~~~~~~~~"
      bordas[3] <- "<<<<<<<<-------<<<<<<<<"
      
      Escreval("Gostaria de escrever na tela? [S/N]")
      Leia(opcao)
      Se(opcao <> "S") entao
          Escreval()
          Escreval("Ok, até breve :(")
          fimalgoritmo
      FimSe
      Escreval()
      
      Escreval("Quantas vezes?")
      Leia(rep)
      Escreval()
      Escreval("Qual mensagem quer escrever?")
      leia(msg)
      Escreval()
      
      Escreval("Qual borda quer utilizar?")
      Escreval("+-------=======-------+ [1]")
      Escreval("~~~~~~~~:::::::~~~~~~~~ [2]")
      Escreval("<<<<<<<<-------<<<<<<<< [3]")
      leia(bor)
      Gerador(msg, rep, bor)
fimalgoritmo
