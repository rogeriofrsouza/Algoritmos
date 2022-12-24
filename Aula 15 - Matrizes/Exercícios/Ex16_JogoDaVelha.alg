algoritmo "JogoDaVelha"
var
   mat: vetor[1..3, 1..3] de Caractere
   i, j, cont, Po: Inteiro
   Simb: Caractere
   R, F: Logico

//Mostra a matriz do jogo na tela
procedimento MostraVelha()
inicio
   LimpaTela
   Escreval("+---+---+---+")
   
   Para i <- 1 ate 3 faca
      Para j <- 1 ate 3 faca
           Escreva("|  ")
           Escreva(mat[i,j])
      FimPara
      
      Escreva("|")
      Escreval()
      Escreval("+---+---+---+")
   FimPara
fimprocedimento

//Analisa a jogada e a posição
funcao Jogar(S: Caractere; P: Inteiro): Logico
var
   mudou: Logico
inicio
   mudou <- falso

   Para i <- 1 ate 3 faca
        Para j <- 1 ate 3 faca
             Se (mat[i,j] = NumpCarac(P)) entao
                 mat[i,j] <- S
                 mudou <- verdadeiro
             FimSe
        FimPara
   FimPara

   Retorne mudou
fimfuncao

//Muda o jogador conforme as jogadas
procedimento MudaJogador()
inicio
   Se (Simb = "X") entao
       Simb <- "O"
   senao
       Se (Simb = "O") entao
            Simb <- "X"
       FimSe
   FimSe
fimprocedimento

//Analisa se o jogo terminou
funcao TerminouVelha(): Logico
var
   fim: Logico
   ocorr: Inteiro
inicio
   fim <- falso
   ocorr <- 0
   
   //Linhas
   Para i <- 1 ate 3 faca
        Se (mat[i,1] = mat[i,2]) e (mat[i,2] = mat[i,3]) entao
             fim <- verdadeiro
        FimSe
   FimPara

   //Colunas
   Para j <- 1 ate 3 faca
        Se(mat[1,j] = mat[2,j]) e (mat[2,j] = mat[3,j]) entao
             fim <- verdadeiro
        FimSe
   FimPara

   //Diagonais
   Se (mat[1,1] = mat[2,2]) e (mat[2,2] = mat[3,3]) entao
      fim <- verdadeiro
   FimSe
   
   Se (mat[1,3] = mat[2,2]) e (mat[2,2] = mat[3,1]) entao
      fim <- verdadeiro
   FimSe

   //Jogo em velha
   Para i <- 1 ate 3 faca
        Para j <- 1 ate 3 faca
             Se (mat[i,j] <> "X") e (mat[i,j] <> "O") entao
                ocorr <- ocorr + 1
             FimSe
        FimPara
   FimPara
   
   Se (ocorr = 0) entao
      fim <- verdadeiro
   FimSe

   Retorne fim
fimfuncao

inicio
   Simb <- "X"
   cont <- 1

   Para i <- 1 ate 3 faca
        Para j <- 1 ate 3 faca
             mat[i,j] <- NumpCarac(cont)
             cont <- cont + 1
        FimPara
   FimPara

   MostraVelha()

   Repita
         Repita
               Escreval()
               Escreva("Vai jogar [", Simb, "] em qual posição? ")
               Leia(Po)

               R <- Jogar(Simb, Po)

               Se (R = falso) entao
                   Escreval("JOGADA INVÁLIDA!")
               FimSe
         Ate (R = verdadeiro)
         
         MudaJogador()
         MostraVelha()
         
         F <- TerminouVelha()
    Ate (F = verdadeiro)

    Escreval()
    Escreval("JOGO FINALIZADO!!!")
fimalgoritmo
