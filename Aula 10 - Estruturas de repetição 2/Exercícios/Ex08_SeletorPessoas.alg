algoritmo "Ex08"
var
   S, C, Q: Caractere
   I, M, H: Inteiro
inicio
   H <- 0
   M <- 0

   Repita
         EscrevaL("=========================")
         EscrevaL("  SELETOR DE PESSOAS  ")
         EscrevaL("=========================")

         Escreva("Qual o sexo? [M/F] ")
         Leia(S)
         Escreva("Qual a idade? ")
         Leia(I)

         EscrevaL("Qual a cor do cabelo?")
         EscrevaL("----------------------")
         EscrevaL("[1] Preto")
         EscrevaL("[2] Castanho")
         EscrevaL("[3] Loiro")
         EscrevaL("[4] Ruivo")
         Leia(C)

         Se (S = "M") e (I > 18) e (C = "2") entao
            H <- H + 1
         FimSe

         Se (S = "F") e (I >= 25) e (I <= 30) e (C = "3") entao
            M <- M + 1
         FimSe

         Escreva("Quer continuar? [S/N] ")
         Leia(Q)

         Se (Q = "S") entao
            LimpaTela
         FimSe
   Ate (Q = "N")
   LimpaTela

   EscrevaL("------------------------")
   EscrevaL("  RESULTADO FINAL")
   EscrevaL("------------------------")
   EscrevaL("Total de homens com mais de 18 e cabelos castanhos:", H)
   EscrevaL("Total de mulheres entre 25 e 30 e cabelos loiros:", M)
fimalgoritmo
