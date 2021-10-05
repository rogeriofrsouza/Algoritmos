algoritmo "Jogo da velha"
var
   m: vetor[1..3, 1..3] de Caractere
   i, j, cont, Po: Inteiro
   Simb: Caractere
   R, F: Logico

//Mostra a matriz do jogo na tela
Procedimento MostraVelha()
Inicio
    Escreval("+---+---+---+")
    Para i <- 1 ate 3 faca
         Para j <- 1 ate 3 faca
              Escreva("|  ")
              Escreva(m[i,j]:1)
         FimPara
         Escreva("|")
         Escreval()
         Escreval("+---+---+---+")
    FimPara
FimProcedimento

//Muda o jogador conforme as jogadas
Procedimento MudaJogador()
Inicio
     Se(Simb = "X")entao
          Simb <- "O"
     senao
          Se(Simb = "O")entao
               Simb <- "X"
          FimSe
     FimSe
FimProcedimento

//Analisa a jogada e a posição
Funcao Jogar(S: Caractere; P: Inteiro): Logico
Var
   mudou: Logico
Inicio
      mudou <- falso
      Para i <- 1 ate 3 faca
           Para j <- 1 ate 3 faca
                Se(m[i,j] = NumpCarac(P)) entao
                    m[i,j] <- S
                    mudou <- verdadeiro
                FimSe
           FimPara
      FimPara
      Retorne mudou
FimFuncao

//Analisa se o jogo terminou
Funcao TerminouVelha(): Logico
Var
   fim: Logico
   ocorr: Inteiro
Inicio
      fim <- falso
      ocorr <- 0
//Linhas
      Para i <- 1 ate 3 faca
           Se(m[i,1] = m[i,2]) e (m[i,2] = m[i,3]) entao
                fim <- verdadeiro
           FimSe
      FimPara
      
//Colunas
      Para j <- 1 ate 3 faca
           Se(m[1,j] = m[2,j]) e (m[2,j] = m[3,j]) entao
                fim <- verdadeiro
           FimSe
      FimPara
      
//Diagonais
      Se (m[1,1] = m[2,2]) e (m[2,2] = m[3,3]) entao
         fim <- verdadeiro
      FimSe
      Se (m[1,3] = m[2,2]) e (m[2,2] = m[3,1]) entao
         fim <- verdadeiro
      FimSe

//Jogo em velha
      Para i <- 1 ate 3 faca
           Para j <- 1 ate 3 faca
                Se (m[i,j] <> "X") e (m[i,j] <> "O") entao
                ocorr <- ocorr + 1
                FimSe
           FimPara
      FimPara
      Se (ocorr = 0) entao
         fim <- verdadeiro
      FimSe
      
      Retorne fim
FimFuncao

inicio
      Simb <- "X"
      cont <- 1
      
      Para i <- 1 ate 3 faca
           Para j <- 1 ate 3 faca
                m[i,j] <- NumpCarac(cont)
                cont <- cont + 1
           FimPara
      FimPara
      MostraVelha()

      Repita
            Repita
                  Escreva("Vai jogar [", Simb, "] em qual posição? ")
                  Leia(Po)

                  R <- Jogar(Simb, Po)
                  Se(R = falso) entao
                      Escreval("JOGADA INVÁLIDA!")
                  FimSe
            Ate(R = verdadeiro)
            MudaJogador()

            LimpaTela
            MostraVelha()
            F <- TerminouVelha()
       Ate(F = verdadeiro)
       
      Escreval("JOGO FINALIZADO!!!")
fimalgoritmo
