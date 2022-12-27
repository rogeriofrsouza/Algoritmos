algoritmo "MsgParametro3"
var
   opcao, msg: Caractere
   rep, c, borda: Inteiro
   bordas: vetor[1..3] de Caractere
   
procedimento Gerador(T: Caractere; R: Inteiro; B: Inteiro)
var
   C: Inteiro
inicio
   LimpaTela
   Escreval(bordas[B])
   
   Para C <- 1 ate rep faca
        Escreval(" ", T)
   FimPara
   
   Escreval(bordas[B])
fimprocedimento

inicio
   bordas[1] <- "+-------=======-------+"
   bordas[2] <- "~~~~~~~~:::::::~~~~~~~~"
   bordas[3] <- "<<<<<<<<-------<<<<<<<<"

   Escreval("Gostaria de escrever na tela? [S/N]")
   Leia(opcao)
   Escreval()
   
   Se(opcao <> "S") entao
       Escreval("Ok, até breve :(")
       fimalgoritmo
   FimSe

   Escreval("Quantas vezes?")
   Leia(rep)
   Escreval()
   Escreval("Qual mensagem quer escrever?")
   leia(msg)
   Escreval()

   Escreval("Qual borda quer utilizar?")
   Escreval("[1] +-------=======-------+")
   Escreval("[2] ~~~~~~~~:::::::~~~~~~~~")
   Escreval("[3] <<<<<<<<-------<<<<<<<<")
   leia(borda)
   
   Gerador(msg, rep, borda)
fimalgoritmo
