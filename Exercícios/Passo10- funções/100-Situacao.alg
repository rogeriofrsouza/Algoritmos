algoritmo "Situacao"
var
   A, B, Media: Real
   Sit: Caractere
   
procedimento Titulo()
inicio
   LimpaTela
   Escreval("+-------------------------+")
   Escreval("  F A T E C SOROCABA")
   Escreval("+-------------------------+")
   Escreval()
fimprocedimento
   
funcao CalculaMedia(X, Y: Real): Real
inicio
   Retorne (X + Y) / 2
fimfuncao

funcao VerificaSituacao(M: Real): Caractere
var
   Res: Caractere
   
inicio
   Se (M < 5) entao
      Res := "REPROVADO"
   senao
      Se (M < 7) entao
         Res := "em RECUPERAÇÃO"
      senao
           Res := "APROVADO"
      FimSe
   FimSe
   
   Retorne Res
fimfuncao

inicio
   Titulo()

   Repita
      Escreva("Digite a primeira nota: ")
      Leia(A)
      Escreva("Digite a segunda nota: ")
      Leia(B)

      Media := CalculaMedia(A, B)
      Escreval()
   Ate (Media >= 0) e (Media <= 10)
   
   Sit := VerificaSituacao(Media)

   Titulo()
   Escreval("Média do aluno: ", Media:4:2)
   Escreval("Situação: ", Sit)
fimalgoritmo
