algoritmo "Contagem"
var
   inic, final, increm: Inteiro
   
Procedimento Contagem(A, B, C: Inteiro)
var
   cont: Inteiro
inicio
      Se(B > A) entao
          Para cont <- A ate B passo C faca
               Escreva(cont, " >> ")
          FimPara
      senao
           Se(A > B) entao
                Para cont <- A ate B passo -C faca
                     Escreva(cont, " >> ")
                FimPara
           senao
                Se(A = B) entao
                     Escreval()
                     Escreval("Os valores são iguais, tente novamente...")
                     fimalgoritmo
                FimSe
           FimSe
      FimSe
      Escreval()
      Escreval("Ufa... Terminei de contar :)")
FimProcedimento

inicio
      Escreva("Digite o número inicial da contagem: ")
      Leia(inic)
      Escreva("Agora digite o número final: ")
      Leia(final)
      Escreva("Para terminar, digite qual o incremento quer utilizar: ")
      Leia(increm)

      Escreval()
      Contagem(inic, final, increm)
fimalgoritmo
