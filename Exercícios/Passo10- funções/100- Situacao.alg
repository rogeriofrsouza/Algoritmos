algoritmo "Situacao"
var
   A, B, M: Real
   Sit: Caractere
   
Procedimento Tela()
inicio
      LimpaTela
      Escreval("+-------------------------+")
      Escreval("  F A T E C ITAPETININGA")
      Escreval("+-------------------------+")
      Escreval()
FimProcedimento
   
Funcao Media(X, Y: Real): Real
var
   Z: Real
inicio
      Z := (X + Y)/ 2
      Retorne Z
FimFuncao

Funcao Situacao(S: Real): Caractere
inicio
      Se (S <= 10) e (S >= 7) entao
         Retorne "APROVADO"
      senao
           Se (S < 7) e (S >= 5) entao
              Retorne "em RECUPERAÇÃO"
           senao
                Se (S < 5) e (S >= 0) entao
                   Retorne "REPROVADO"
                senao
                     Retorne "ERRO"
                FimSe
           FimSe
      FimSe
FimFuncao

inicio
      Tela()
      
      Escreva("Digite a primeira nota: ")
      Leia(A)
      Escreval()
      Escreva("Digite a segunda nota: ")
      Leia(B)
      
      M := Media(A, B)
      Sit := Situacao(M)
      
      Tela()
      Se (Sit <> "ERRO") entao
         Escreval("Média do aluno: ", M:4:2)
         Escreval()
         Escreval("Situação: ", Sit)
      senao
           Escreval("ERRO, tente novamente...")
      FimSe
fimalgoritmo
