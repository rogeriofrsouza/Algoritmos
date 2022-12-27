algoritmo "Potencia"
var
   base, expo, Res: Inteiro
   opcao: Caractere
   
procedimento Titulo()
inicio
   LimpaTela
   Escreval("--------------------------")
   Escreval("P O T E N C I A Ç Ã O")
   Escreval("--------------------------")
   Escreval()
fimprocedimento

funcao Potencia(X, Y: Inteiro): Inteiro
var
   cont, P: Inteiro
inicio
   P <- 1
   
   Para cont <- 1 ate Y faca
        P <- P * X
   FimPara
   
   Retorne P
fimfuncao

inicio
   Repita
       Titulo()
       
       Escreva("Digite o número da base: ")
       Leia(base)
       Escreva("Digite o número do expoente: ")
       Leia(expo)

       Escreval()
       Res <- Potencia(base, expo)
       Escreval("O resultado de", base, " ^", expo, " é igual a", Res)

       Escreval()
       Escreval("Quer calcular outra potência? [S/N]")
       Leia(opcao)
   Ate (opcao <> "S")

   LimpaTela
   Escreval("--------------------------")
   Escreval("T E R M I N A N D O ...")
   Escreval("--------------------------")
fimalgoritmo
