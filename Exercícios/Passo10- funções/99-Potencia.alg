algoritmo "Potencia"
var
   base, expo, Res: Inteiro
   opcao: Caractere
   
procedimento Titulo()
inicio
   LimpaTela
   Escreval("--------------------------")
   Escreval("P O T E N C I A � � O")
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
       
       Escreva("Digite o n�mero da base: ")
       Leia(base)
       Escreva("Digite o n�mero do expoente: ")
       Leia(expo)

       Escreval()
       Res <- Potencia(base, expo)
       Escreval("O resultado de", base, " ^", expo, " � igual a", Res)

       Escreval()
       Escreval("Quer calcular outra pot�ncia? [S/N]")
       Leia(opcao)
   Ate (opcao <> "S")

   LimpaTela
   Escreval("--------------------------")
   Escreval("T E R M I N A N D O ...")
   Escreval("--------------------------")
fimalgoritmo
