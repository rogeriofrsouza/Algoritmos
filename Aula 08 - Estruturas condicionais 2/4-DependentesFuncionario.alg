algoritmo "DependentesFuncionario"
var
   Nome: Caractere
   Sal, NSal: Real
   Dep: Inteiro
inicio
   Escreva("Qual o nome do funcionário? ")
   Leia(Nome)
   Escreva("Qual o salário do funcionário? R$")
   Leia(Sal)
   Escreva("Qual é a quantidade de dependentes? ")
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

   EscrevaL("O novo salário de ", Nome, " será de R$", NSal:5:2)
fimalgoritmo
