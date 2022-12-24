algoritmo "Creuza_05"
var
   emprestimo, juros, valor_total, parcelas, valor_parcelas: Real
inicio
   Escreva("Qual o valor do empréstimo? R$")
   Leia(emprestimo)

   juros <- emprestimo * 0.2
   Escreval("Valor do juros: R$", juros:5:2)

   valor_total <- emprestimo + juros
   Escreval("Valor total: RS", valor_total)

   Escreva("Quantas parcelas? ")
   Leia(parcelas)

   valor_parcelas <- valor_total / parcelas
   Escreva("Vou pagar", parcelas, " parcelas de R$", valor_parcelas:5:2)
fimalgoritmo
