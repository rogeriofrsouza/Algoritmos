algoritmo "Maior"
var
   n1, n2, n3: Inteiro
   R: Inteiro
   
funcao AchaMaior(A, B, C: Inteiro): Inteiro
var
   Maior: Inteiro
inicio
   Se (A > B) e (A > C) entao
      Maior <- A
   senao
        Se (B > A) e (B > C) entao
             Maior <- B
        senao
             Se (C > A) e (C > B) entao
                  Maior <- C
             FimSe
        FimSe
   FimSe
   
   Retorne Maior
fimfuncao

inicio
   Escreva("Digite o primeiro número: ")
   Leia(n1)
   Escreva("Digite o segundo número: ")
   Leia(n2)
   Escreva("Digite o terceiro número: ")
   Leia(n3)

   R <- AchaMaior(n1, n2, n3)
   Escreval()
   Escreval(R, " é o maior valor!!")
fimalgoritmo
