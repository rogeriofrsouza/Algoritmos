algoritmo "Maior"
var
   n1, n2, n3: Inteiro
   R: Inteiro
   
Funcao Maior(A, B, C: Inteiro): Inteiro
var
   Mai: Inteiro
inicio
      Se(A > B) e (A > C) entao
           Mai <- A
      senao
           Se(B > A) e (B > C) entao
                Mai <- B
           senao
                Se(C > A) e (C > B) entao
                     Mai <- C
                FimSe
           FimSe
      FimSe
      Retorne Mai
FimFuncao

inicio
      Escreva("Digite o primeiro número: ")
      Leia(n1)
      Escreva("Digite o segundo número: ")
      Leia(n2)
      Escreva("Digite o terceiro número: ")
      Leia(n3)
      
      R <- Maior(n1, n2, n3)
      Escreval()
      Escreval(R, " é o maior valor!!")
fimalgoritmo
