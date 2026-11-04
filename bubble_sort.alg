algoritmo "Mortalidade_Infantil_Sao_Paulo"

var
   taxas: vetor[1..15] de real
   anos: vetor[1..15] de inteiro
   i, j, auxAno: inteiro
   auxTaxa: real

inicio
   // Dados do IBGE - Sao Paulo (SP), de 2006 a 2020
   taxas[1] <- 12.91
   taxas[2] <- 12.56
   taxas[3] <- 12.11
   taxas[4] <- 11.98
   taxas[5] <- 11.53
   taxas[6] <- 11.40
   taxas[7] <- 11.51
   taxas[8] <- 11.20
   taxas[9] <- 11.11
   taxas[10] <- 10.86
   taxas[11] <- 11.32
   taxas[12] <- 11.19
   taxas[13] <- 11.04
   taxas[14] <- 11.21
   taxas[15] <- 10.23

   para i de 1 ate 15 faca
      anos[i] <- 2005 + i
   fimpara

   escreval("MORTALIDADE INFANTIL - SAO PAULO")
   escreval("Fonte: IBGE | Periodo: 2006 a 2020")
   escreval("--------------------------------")
   escreval("DADOS ORIGINAIS:")

   para i de 1 ate 15 faca
      escreval(anos[i], " - ", taxas[i]:5:2)
   fimpara

   // Bubble Sort: ordena taxas e preserva os anos correspondentes
   para i de 1 ate 14 faca
      para j de 1 ate 15-i faca
         se taxas[j] > taxas[j+1] entao
            auxTaxa <- taxas[j]
            taxas[j] <- taxas[j+1]
            taxas[j+1] <- auxTaxa

            auxAno <- anos[j]
            anos[j] <- anos[j+1]
            anos[j+1] <- auxAno
         fimse
      fimpara
   fimpara

   escreval("")
   escreval("RESULTADO EM ORDEM CRESCENTE:")
   escreval("--------------------------------")

   para i de 1 ate 15 faca
      escreval(anos[i], " - ", taxas[i]:5:2)
   fimpara
fimalgoritmo
