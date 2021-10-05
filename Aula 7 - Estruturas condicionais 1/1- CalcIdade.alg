algoritmo "CalculoIdade"
var
   ano, nasc, idade: Inteiro
inicio
       Escreva("Em que ano estamos? ")
       Leia(ano)
       Escreva("Em que ano voce nasceu? ")
       Leia(nasc)
       
       idade <- ano - nasc
       Escreva("Em ", ano, " voce terá ", idade, " anos ")
       
       Se (idade >= 21) entao
           Escreval("e já terá atingido a maioridade.")
       FimSe
fimalgoritmo
