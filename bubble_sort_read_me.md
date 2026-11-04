# Bubble Sort no VisualG

## Contexto

Exercício da disciplina **Tópicos de Programação**, utilizando a série histórica da taxa de mortalidade infantil do município de São Paulo (SP), de **2006 a 2020**, disponibilizada em [IBGE — Cidades e Estados](https://www.ibge.gov.br/cidades-e-estados/sp/sao-paulo.html).

A taxa representa o número de óbitos de menores de um ano por mil nascidos vivos. Os 15 valores foram extraídos da série histórica presente no HTML da página do município.

## Objetivo

Armazenar os valores em um vetor e ordená-los em ordem crescente, empregando o método **Bubble Sort (ordenação por bolha)** no VisualG.

## Fundamentos do algoritmo

O Bubble Sort percorre repetidamente o vetor, compara elementos adjacentes e troca suas posições quando estão fora da ordem desejada. Ao final de cada passagem, o maior elemento ainda não posicionado chega ao fim da parte não ordenada.

A implementação usa dois vetores paralelos:

- `taxas`: valores anuais da mortalidade infantil;
- `anos`: anos correspondentes a cada taxa.

Quando duas taxas são trocadas, seus anos também são trocados, preservando a associação entre ambos.

### Complexidade

- **Tempo:** `O(n²)` no melhor, médio e pior caso da implementação apresentada, pois todos os laços são executados, sem parada antecipada.
- **Espaço auxiliar da ordenação:** `O(1)`, porque utiliza apenas variáveis temporárias para as trocas. Os dois vetores de dados ocupam `O(n)` no total.
- **Comparações:** para `n = 15`, são `15 × 14 / 2 = 105` comparações.

## Dados utilizados

| Ano | Taxa (óbitos por mil nascidos vivos) |
|---|---:|
| 2006 | 12,91 |
| 2007 | 12,56 |
| 2008 | 12,11 |
| 2009 | 11,98 |
| 2010 | 11,53 |
| 2011 | 11,40 |
| 2012 | 11,51 |
| 2013 | 11,20 |
| 2014 | 11,11 |
| 2015 | 10,86 |
| 2016 | 11,32 |
| 2017 | 11,19 |
| 2018 | 11,04 |
| 2019 | 11,21 |
| 2020 | 10,23 |

## Resultado esperado: ordem crescente

| Ano | Taxa |
|---|---:|
| 2020 | 10,23 |
| 2015 | 10,86 |
| 2018 | 11,04 |
| 2014 | 11,11 |
| 2017 | 11,19 |
| 2013 | 11,20 |
| 2019 | 11,21 |
| 2016 | 11,32 |
| 2011 | 11,40 |
| 2012 | 11,51 |
| 2010 | 11,53 |
| 2009 | 11,98 |
| 2008 | 12,11 |
| 2007 | 12,56 |
| 2006 | 12,91 |

A ordenação é feita **pela taxa**, não pelo ano. Por isso, o ano de 2020 aparece primeiro.

## Como executar

1. Abra o VisualG 3.0.
2. Abra o arquivo [`bubble_sort.alg`](bubble_sort.alg).
3. Pressione **F9** para executar.
4. Confira a série original e o resultado crescente.

O VisualG pode ser obtido na [página do projeto no SourceForge](https://sourceforge.net/projects/visualg30/).

## Referências

- INSTITUTO BRASILEIRO DE GEOGRAFIA E ESTATÍSTICA (IBGE). **São Paulo (SP): Cidades e Estados**. Disponível em: https://www.ibge.gov.br/cidades-e-estados/sp/sao-paulo.html. Acesso em: 3 nov. 2026.
- NICOLODI, Antonio Carlos. **VisualG 3.0**. Versão 3.0.7. SourceForge, 2020. Disponível em: https://sourceforge.net/projects/visualg30/. Acesso em: 3 nov. 2026.

## Licença

O código e esta documentação estão disponíveis sob a [licença MIT](LICENSE).
