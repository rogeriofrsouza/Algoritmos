algoritmo "vetor20-ordem-crescente"
var
   vet: vetor[1..20] de Inteiro
   cont, opcao, i, j, aux: Inteiro
   A: Logico

//Título na tela
//+-------=======------+ Borda 1
//~~~~~~~~:::::::~~~~~~~ Borda 2
//<<<<<<<<------->>>>>>> Borda 3
procedimento Titulo()
inicio
   LimpaTela
   Escreval("+-------=======------+")
   Escreval("  +D E S A F I O+ ")
   Escreval("+-------=======------+")
   Escreval()
fimprocedimento

procedimento MostraTela()
inicio
   cont := 1
   
   //Escreval("+---+---+---+---+---+")
   Para i := 1 ate 4 faca
      Para j := 1 ate 5 faca
          Se (opcao = 3) entao
             Se (vet[cont] % 2 = 0) entao
                Escreva(vet[cont]:5)
             senao
                  Escreva("     ")
             FimSe
          senao
               Se (opcao = 4) entao
                  Se (vet[cont] % 2 = 1) entao
                     Escreva(vet[cont]:5)
                  senao
                       Escreva("     ")
                  FimSe
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
fimprocedimento

funcao AnalisaOpcao(O: Inteiro): Logico
var
   fim: Logico
inicio
   fim := falso
   
   Se (O < 1) ou (O > 5) entao
      Escreval()
      Escreval("ERRO: Digite uma opção do MENU...")
   senao
        fim := verdadeiro
   FimSe
   
   Retorne fim
fimfuncao

//[1]
procedimento OrdemCrescente()
inicio
   Para i := 1 ate 19 faca
      Para j := i+1 ate 20 faca
          Se (vet[i] > vet[j]) entao
              aux := vet[i]
              vet[i] := vet[j]
              vet[j] := aux
          FimSe
      FimPara
   FimPara
fimprocedimento

//[2]
procedimento OrdemDecrescente()
inicio
   Para i := 1 ate 19 faca
      Para j := i+1 ate 20 faca
          Se (vet[i] < vet[j]) entao
              aux := vet[i]
              vet[i] := vet[j]
              vet[j] := aux
          FimSe
      FimPara
   FimPara
fimprocedimento

inicio
   Para cont := 1 ate 20 faca
        vet[cont] := Randi(99): Inteiro
   FimPara

   Repita
      Titulo()
      MostraTela()
      
      Escreval("MENU")
      Escreval("[1] Organizar em ordem crescente")
      Escreval("[2] Ordem decrescente")
      Escreval("[3] Exibir os números pares")
      Escreval("[4] Exibir os ímpares")
      Escreval("[5] Sair")

      Repita
         Leia(opcao)
         A := AnalisaOpcao(opcao)
      Ate (A = verdadeiro)

      Escolha(opcao)
         Caso 1
            OrdemCrescente()
         Caso 2
            OrdemDecrescente()
         Caso 5
            Titulo()
            Escreval("T E R M I N A N D O ...")
      FimEscolha
   Ate (opcao = 5)
fimalgoritmo
