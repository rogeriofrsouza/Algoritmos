algoritmo "Ex15"
var
   m: vetor[1..4, 1..4] de Inteiro
   l, c, i, j, opcao: Inteiro
inicio
      Para l <- 1 ate 4 faca
           Para c <- 1 ate 4 faca
                Escreva("Digite um valor para a posição [", l, ",", c, "]: ")
                Leia(m[l,c])
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
            Escreval("[5] Sair")
            Escreva("===== OPÇÃO: ")
            Leia(opcao)
            
            Escolha opcao
                Caso 1
                     LimpaTela
                     Para i <- 1 ate 4 faca
                          Para j <- 1 ate 4 faca
                               Escreva(m[i,j]:4)
                          FimPara
                          Escreval()
                     FimPara
                     Escreval()
                Caso 2
                     LimpaTela
                     Para i <- 1 ate 4 faca
                          Para j <- 1 ate 4 faca
                               Se (i = j) entao
                                  Escreva(m[i,j]:4)
                               senao
                                    Escreva("    ")
                               FimSe
                          FimPara
                          Escreval()
                     FimPara
                     Escreval()
                Caso 3
                     Limpatela
                     Para i <- 1 ate 4 faca
                          Para j <- 1 ate 4 faca
                               Se (j > i) entao
                                  Escreva(m[i,j]:4)
                               senao
                                    Escreva("    ")
                               FimSe
                          FimPara
                          Escreval()
                     FimPara
                     Escreval()
                Caso 4
                     LimpaTela
                     Para i <- 1 ate 4 faca
                          Para j <- 1 ate 4 faca
                               Se (i > j) entao
                                  Escreva(m[i,j]:4)
                               senao
                                    Escreva("    ")
                               FimSe
                          FimPara
                          Escreval()
                     FimPara
                     Escreval()
                Caso 5
                     LimpaTela
                     Escreval("ENCERRANDO . . .")
            FimEscolha
      Ate(opcao = 5)
fimalgoritmo
