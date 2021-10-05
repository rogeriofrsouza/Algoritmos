algoritmo "vetor20-ordem-crescente"
var
   vet: vetor[1..20] de Inteiro
   pares, impares: vetor[1..20] de Caractere
   cont, opcao, i, j, aux: Inteiro
   A: Logico
   esc: Caractere

//Título na tela
//+-------=======------+ Borda 1
//~~~~~~~~:::::::~~~~~~~ Borda 2
//<<<<<<<<------->>>>>>> Borda 3
Procedimento Titulo()
Inicio
      LimpaTela
      Escreval("+-------=======------+")
      Escreval("  +D E S A F I O+ ")
      Escreval("+-------=======------+")
      Escreval()
FimProcedimento

Procedimento MostraTela()
Inicio
      cont := 1
      //Escreval("+---+---+---+---+---+")
      Para i := 1 ate 4 faca
           Para j := 1 ate 5 faca
                Se(opcao = 3) entao
                    Escreva("   ", pares[cont]:2)
                senao
                     Se(opcao = 4) entao
                         Escreva("   ", impares[cont]:2)
                     senao
                          Escreva(vet[cont]:5)
                     FimSe
                FimSe
                cont := cont + 1
           FimPara
           //Escreva("|")
           Escreval()
      FimPara
      //Escreval("+---+---+---+---+---+")
      Escreval()
FimProcedimento

Funcao Analise(O: Inteiro): Logico
var
   fim: Logico
Inicio
      fim := falso
      Se(O < 1) ou (O > 5) entao
          Escreval()
          Escreval("ERRO: Digite uma opção do MENU...")
      senao
           fim := verdadeiro
      FimSe
      Retorne fim
FimFuncao

//[1]
Procedimento OrdemCrescente()
Inicio
      Para i := 1 ate 19 faca
           Para j := i+1 ate 20 faca
                Se(vet[i] > vet[j]) entao
                    aux := vet[i]
                    vet[i] := vet[j]
                    vet[j] := aux
                FimSe
           FimPara
      FimPara
      cont := 1
FimProcedimento

//[2]
Procedimento OrdemDecrescente()
Inicio
      Para i := 1 ate 19 faca
           Para j := i+1 ate 20 faca
                Se(vet[i] < vet[j]) entao
                    aux := vet[i]
                    vet[i] := vet[j]
                    vet[j] := aux
                FimSe
           FimPara
      FimPara
      cont := 1
FimProcedimento

//[3]
Procedimento SoPares()
Inicio
      Para cont := 1 ate 20 faca
           Se(vet[cont] % 2 = 0) entao
               pares[cont] := NumpCarac(vet[cont])
           senao
                NumpCarac(pares[cont]: Inteiro): Caractere
           Fimse
      FimPara
      cont := 1
FimProcedimento

//[4]
Procedimento SoImpares()
Inicio
      Para cont := 1 ate 20 faca
           Se(vet[cont] % 2 = 1) entao
               impares[cont] := NumpCarac(vet[cont])
           Fimse
      FimPara
      cont := 1
FimProcedimento

inicio
      Para cont := 1 ate 20 faca
           vet[cont] := Randi(99): Inteiro
      FimPara
      
      Repita
            Titulo()
            Mostratela()
            Escreval("MENU")
            Escreval("[1] Organizar em ordem crescente")
            Escreval("[2] Ordem decrescente")
            Escreval("[3] Exibir os números pares")
            Escreval("[4] Exibir os ímpares")
            Escreval("[5] Sair")
            Repita
                  Leia(opcao)
                  A := Analise(opcao)
            Ate(A = verdadeiro)
            
            Escolha(opcao)
                Caso 1
                     OrdemCrescente()
                Caso 2
                     OrdemDecrescente()
                Caso 3
                     SoPares()
                Caso 4
                     SoImpares()
                Caso 5
                     Titulo()
                     Escreval("T E R M I N A N D O ...")
            FimEscolha
      Ate(opcao = 5)
fimalgoritmo
