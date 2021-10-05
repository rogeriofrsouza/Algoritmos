algoritmo "Ex07"
var
   N, Cont: Inteiro
inicio
      Repita
            EscrevaL("===================")
            EscrevaL("|     M E N U     |")
            EscrevaL("===================")
            EscrevaL("|  [1] De 1 a 10  |")
            EscrevaL("|  [2] De 10 a 1  |")
            EscrevaL("|  [3] Sair       |")
            EscrevaL("===================")
            Leia(N)
            
            Se (N = 1) entao
               Cont <- 1
               Repita
                     Escreva(Cont, ".. ")
                     Cont <- Cont + 1
               Ate(Cont > 10)
            senao
                 Se (N = 2) entao
                    Cont <- 10
                    Repita
                          Escreva(Cont, ".. ")
                          Cont <- Cont - 1
                    Ate(Cont < 1)
                 FimSe
            FimSe
            EscrevaL("")
      Ate(N = 3)
      
      EscrevaL("SAINDO...")
fimalgoritmo
