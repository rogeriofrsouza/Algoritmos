algoritmo "SóImportaQuemComeçaComC"
var
   nome: Caractere
   soC: vetor[1..10] de Caractere
   c, tot: Inteiro
inicio
   tot <- 0

   Para c <- 1 ate 10 faca
        Escreva("Digite o nome: ")
        Leia(nome)

        Se (Copia(Maiusc(nome), 1, 1) = "C") entao
           tot <- tot + 1
           soC[tot] <- nome
        FimSe
   FimPara

   LimpaTela
   EscrevaL("LISTAGEM FINAL")
   EscrevaL("------------------")
   
   Para c <- 1 ate tot faca
        EscrevaL(soC[c])
   FimPara
fimalgoritmo
