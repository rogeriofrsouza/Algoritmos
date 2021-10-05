algoritmo "Ex06"
var
   A, cont: Inteiro
   nome, nome1, nome2: Caractere
   maior, menor, nota: Real
inicio
      EscrevaL("--------------------------")
      EscrevaL(" Escola Santa Paciência")
      EscrevaL("--------------------------")
      Escreva("Quantos alunos a turma tem? ")
      Leia(A)
      
      cont <- 1
      Enquanto (cont <= A) faca
               EscrevaL("-------------------")
               EscrevaL("Aluno ", cont)
               Escreva("Nome do aluno: ")
               Leia(nome)
               Escreva("Nota de ", nome, ": ")
               Leia(nota)
               
               Se (cont = 1) entao
                  maior <- nota
                  nome1 <- nome
               senao
                    Se (nota > maior) entao
                       maior <- nota
                       nome1 <- nome
                    FimSe
               FimSe
               
               Se (cont = 1) entao
                  menor <- nota
                  nome2 <- nome
               senao
                    Se (nota < menor) entao
                       menor <- nota
                       nome2 <- nome
                    FimSe
               FimSe
               cont <- cont + 1
      FimEnquanto
      
      EscrevaL("--------------------------")
      EscrevaL("O melhor aproveitamento foi de ", nome1, ", com a nota ", maior:2:1)
      EscrevaL("O pior aproveitamento foi de ", nome2, ", com a nota ", menor:2:1)
fimalgoritmo
