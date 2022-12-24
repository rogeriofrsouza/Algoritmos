algoritmo "Ex15"
var
   mat: vetor[1..4, 1..4] de Inteiro
   l, c, opcao, aux: Inteiro
inicio
   Para l <- 1 ate 4 faca
        Para c <- 1 ate 4 faca
             Escreva("Digite um valor para a posição [", l, ",", c, " ]: ")
             Leia(mat[l,c])
        FimPara
   FimPara
   
   LimpaTela
   
   Repita
         Escreval("MENU DE OPÇÕES")
         Escreval("====================")
         Escreval("[1] Mostrar a Matriz")
         Escreval("[2] Diagonal Principal")
         Escreval("[3] Triangulo Superior")
         Escreval("[4] Triangulo Inferior")
         Escreval("[0] Sair")
         Escreva("OPÇÃO: ")
         Leia(opcao)

         LimpaTela
         
         Escolha opcao
             Caso 1
                  Para l <- 1 ate 4 faca
                       Para c <- 1 ate 4 faca
                            Escreva(mat[l,c]:4)
                       FimPara
                       
                       Escreval()
                  FimPara
             Caso 2
                  Para l <- 1 ate 4 faca
                       Para c <- 1 ate 4 faca
                            Se (l = c) entao
                               Escreva(mat[l,c]:4)
                            senao
                                 Escreva("    ")
                            FimSe
                       FimPara
                       
                       Escreval()
                  FimPara
             Caso 3
                  Para l <- 1 ate 4 faca
                       Para c <- 1 ate 4 faca
                            Se (c > l) entao
                               Escreva(mat[l,c]:4)
                            senao
                                 Escreva("    ")
                            FimSe
                       FimPara
                       
                       Escreval()
                  FimPara
             Caso 4
                  Para l <- 1 ate 4 faca
                       Para c <- 1 ate 4 faca
                            Se (l > c) entao
                               Escreva(mat[l,c]:4)
                            senao
                                 Escreva("    ")
                            FimSe
                       FimPara
                       
                       Escreval()
                  FimPara
             Caso 0
                  Escreval("ENCERRANDO . . .")
         FimEscolha
         
         Escreval()
   Ate(opcao = 0)
fimalgoritmo
