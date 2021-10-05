algoritmo "Creuza_04"
var
    preco, imposto: Real
inicio
      Escreva("Qual o preço do produto? US$")
      Leia(preco)
      
      imposto <- preco * 0.6
      Escreva("O imposto será de US$", imposto:5:2)
fimalgoritmo
