algoritmo "DependentesFuncionario"
var
   Nome: Caractere
   Sal, NSal: Real
   Dep: Inteiro
inicio
   Escreva("Qual o nome do funcion�rio? ")
   Leia(Nome)
   Escreva("Qual o sal�rio do funcion�rio? R$")
   Leia(Sal)
   Escreva("Qual � a quantidade de dependentes? ")
   Leia(Dep)

   Escolha Dep
           Caso 0
                NSal <- Sal + (Sal * 0.05)
           Caso 1, 2, 3
                NSal <- Sal + (Sal * 0.10)
           Caso 4, 5, 6
                NSal <- Sal + (Sal * 0.15)
           OutroCaso
                NSal <- Sal + (Sal * 0.18)
   FimEscolha

   EscrevaL("O novo sal�rio de ", Nome, " ser� de R$", NSal:5:2)
fimalgoritmo
