algoritmo "Ex14"
var
   cadeira: vetor[1..10] de Caractere
   Tot: Inteiro
   opcao: Caractere
   F: Logico

//Exibe as cadeiras do cinema na tela
procedimento MostraCadeiras()
var
   cont: Inteiro
inicio
   LimpaTela
   
   Para cont <- 1 ate 10 faca
      Se (cadeira[cont] = "X") entao
        Escreva("[ --- ]")
      senao
          Escreva("[ B", cont, " ]")
      FimSe
   FimPara
   
   Escreval()
   Escreval("----------------------------------------------------------------------------------")
fimprocedimento

//Usuário escolhe quantas cadeiras quiser
funcao EscolheCadeiras(): Logico
var
   fim: Logico
   reserva: Inteiro
inicio
   fim <- falso
   
   Escreva("Reservar a cadeira: B ")
   Leia(reserva)
            
   Se (cadeira[reserva] = "X") entao
      Escreval("ERRO: Lugar Ocupado :(")
   senao
        Escreval("Cadeira B", reserva, " RESERVADA!")
        cadeira[reserva] <- "X"
        
        Tot <- Tot + 1
        fim <- verdadeiro
   FimSe
   
   Escreval()
   Retorne fim
fimfuncao

inicio
   opcao <- "S"
   Tot <- 0
   
   Repita
      MostraCadeiras()

      Repita
            F <- EscolheCadeiras()
      Ate (F = verdadeiro)
      
      Escreva("Quer reservar outra? [S/N] ")
      Leia(opcao)
   Ate (opcao = "N") ou (Tot = 10)

   MostraCadeiras()
   Escreval()
   
   Se (Tot = 10) e (opcao = "S") entao
      Escreval("Desculpe. Não há mais cadeiras disponíveis :(")
   senao
        Escreval("T E R M I N A N D O ...")
   FimSe
fimalgoritmo
