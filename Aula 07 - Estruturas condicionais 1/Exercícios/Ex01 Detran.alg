algoritmo "Ex01"
var
   ano_atual, ano_nasc, idade: Inteiro
inicio
     EscrevaL("--------------------------")
     EscrevaL(" DEPARTAMENTO DE TRÂNSITO")
     EscrevaL("--------------------------")
     Escreva("Ano atual (yyyy): ")
     Leia(ano_atual)
     Escreva("Ano de nascimento (yyyy): ")
     Leia(ano_nasc)
     
     idade <- ano_atual - ano_nasc
     EscrevaL("--------- STATUS ---------")
     EscrevaL(" Idade: ", idade, " anos")

     Se idade >= 18 entao
        EscrevaL(" Apto a tirar carteira de habilitação.")
     senao
        EscrevaL(" Inapto a tirar carteira de habilitação.")
     FimSe
     Escreva("--------------------------")
     
fimalgoritmo
