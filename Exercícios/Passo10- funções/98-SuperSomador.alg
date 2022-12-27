algoritmo "SuperSomador"
var
   n1, n2: Inteiro
   R: Inteiro
   
funcao Supercontador(A, B: Inteiro): Inteiro
var
   cont, S: Inteiro
inicio
   Se (A < B) entao
      Para cont <- A ate B faca
          S <- S + cont
      FimPara
   senao
       Se (B < A) entao
          Para cont <- A ate B passo -1 faca
             S <- S + cont
          FimPara
       FimSe
   FimSe
   
   Retorne S
fimfuncao

inicio
   Escreva("Digite um número: ")
   Leia(n1)
   Escreva("Digite outro número: ")
   Leia(n2)

   R <- SuperContador(n1, n2)

   LimpaTela
   Escreval("+-----------------+")
   Escreval("SUPER CONTADOR")
   Escreval("+-----------------+")
   Escreval("A soma de", n1, " até", n2, " é", R)
fimalgoritmo
