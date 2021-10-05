algoritmo "Ex14"
var
   cadeira: vetor[1..10] de Inteiro
   cont, reserva, Tot: Inteiro
   opcao: Caractere
   F: Logico

//Exibe as cadeiras do cinema na tela
Procedimento mostraCadeiras()
Inicio
      LimpaTela
      Para cont <- 1 ate 10 faca
           Se (cont = cadeira[cont]) entao
              Escreva("[ --- ]")
           senao
                Escreva("[ B ", cont, " ]")
           FimSe
      FimPara
      Escreval()
      Escreval("----------------------------------------------------------------------------------")
FimProcedimento

//Usuário escolhe quantas cadeiras quiser
Funcao escolhaCadeiras(): Logico
var
   fim: Logico
Inicio
      fim <- falso
      Escreva("Reservar a cadeira: B")
      Leia(reserva)
      
      Se (reserva = cadeira[reserva]) entao
         Escreval("ERRO: Lugar Ocupado :(")
         Escreval()
      senao
           Escreval("Cadeira B", reserva, " RESERVADA!")
           cadeira[reserva] <- reserva
           fim <- verdadeiro
           Tot <- Tot + 1

           Escreval()
           Escreva("Quer reservar outra? [S/N] ")
           Leia(opcao)
      FimSe
      Retorne fim
FimFuncao

inicio
      opcao <- "S"
      Tot <- 0
      Repita
            mostraCadeiras()
            Repita
                F <- escolhaCadeiras()
            Ate (F = verdadeiro)
      Ate (opcao = "N") ou (Tot = 10)

      mostraCadeiras()
      Se (Tot = 10) e (opcao = "S") entao
         Escreval()
         Escreval("Desculpe. Não há mais cadeiras disponíveis :(")
      senao
           Escreval()
           Escreval("T E R M I N A N D O ...")
      FimSe
fimalgoritmo
