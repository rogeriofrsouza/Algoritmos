algoritmo "DetectorPesado"
var
   I: Inteiro
   N, Pesado: Caractere
   P, Maior: Real
   
procedimento Topo()
inicio
   LimpaTela
   EscrevaL("-----------------------------------")
   EscrevaL("D E T E C T O R  DE  P E S A D O ")
   EscrevaL("Maior peso até agora:", Maior, "Kg")
   EscrevaL("-----------------------------------")
fimprocedimento

inicio
   Maior <- 0
   Topo()

   Para I <- 1 ate 5 faca
        Escreva("Digite o nome: ")
        Leia(N)
        Escreva("Digite o peso de ", N, " (Kg): ")
        Leia(P)

        Se (P > Maior) entao
           Maior <- P
           Pesado <- N
        FimSe

        Topo()
   FimPara

   EscrevaL("A pessoa mais pesada foi ", Pesado, ", com", Maior, " Kg.")
fimalgoritmo
