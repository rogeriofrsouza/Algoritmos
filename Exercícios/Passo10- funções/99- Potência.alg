algoritmo "Potencia"
var
   base, expo, Res: Inteiro
   opcao: Caractere
   
Procedimento Tela()
Inicio
      LimpaTela
      Escreval("--------------------------")
      Escreval("P O T E N C I A Ç Ã O")
      Escreval("--------------------------")
      Escreval()
FimProcedimento
   
Funcao Continuar(): Caractere
var
   Op: Caractere
Inicio
      Escreval("Quer calcular outra potência? [S/N]")
      Leia(Op)
      Retorne Op
FimFuncao

Procedimento Loading()
Inicio
      Escreval("Calculando . . .")
      Escreval("Aguarde . . .")
      Escreval()
FimProcedimento

Funcao Potencia(X, Y: Inteiro): Inteiro
var
   cont, P: Inteiro
Inicio
      P <- 1
      Para cont <- 1 ate Y faca
           P <- P * X
      FimPara
      Retorne P
FimFuncao

inicio
      Repita
          Tela()
          Escreva("Digite o número da base: ")
          Leia(base)
          Escreval()
          Escreva("Digite o número do expoente: ")
          Leia(expo)

          Tela()
          Loading()
          Res <- Potencia(base, expo)
          Escreval("O resultado de ", base, " ^ ", expo, " é igual a ", Res)

          Escreval()
          opcao <- Continuar()
      Ate(opcao <> "S") ou (opcao <> "s")
      
      LimpaTela
      Escreval("--------------------------")
      Escreval("T E R M I N A N D O ...")
      Escreval("--------------------------")
fimalgoritmo
