# Introdução

Este repositório armazena as rações cadastradas no site www.comparadorderacao.com.br e algumas regras de negócio. Tudo no formato [YAML](https://pt.wikipedia.org/wiki/YAML) para facilitar a utilização e contribuição da comunidade.

Formato sugerido do arquivo YAML para cada ração:
```
Nome:

Descrição:

Data Lançamento:
Data Descontinuação:

Tipo:
Indicação:

Marca:
Linha:
Categoria:

Idade:
Portes:

Raças:

Propósito:

Imagem URL:
Site URL:

Sabores:

Transgênicos:
Corantes Artificiais:
Conservantes Artificiais:
Livre de Grãos:
Tamanho do Grão:

Energia Metabolizável:

Ingredientes:

Enriquecimento por kg:

Níveis de Garantia:

Embalagens:

Porção Diária:
```


# Missão

Contribuir, educar e auxiliar aos tutores de pets a escolherem uma alimentação de qualidade e barata dando uma vida mais saúdavel para os seus pets.


# Aviso

- Siga sempre as orientações do veterinário do seu bichinho;
- Siga sempre as instruções indicadas na embalagem da ração;
- Pesquise o preço em pet shops da sua região antes de comprar pela internet;
- Não queremos fazer propaganda de produto ou fornecedor;


# Estrutura de diretórios e nomenclatura sugerida

```
Rações/
├── Cães
│   └── Marca
│       └── Linha
│           └── $Tipo$ $Marca$ (opcional)$Linha$ $Categoria$ para $Indicação$ (opcional)$Raças$ $Idade$ $Portes$ (opcional)$Propósito$ (opcional)$Data Descontinuada$.yaml
└── Gatos
...
```

# Seções

## Nome

_Opcional_ 

#### Dica
* É opcional porque a partir das outras seções(Marca, Linha, Categoria, Idade e etc.)  é possível montar um nome para a ração, porém algumas tem nomes muito diferentes do que seria montado pelo automático e para esses casos, você pode especificar um nome.

## Descrição

_Opcional_

Exemplo:
```
Descrição: |
    Ração feita especialmente para o seu cão.
    
    Natural:
    - Sem grãos transgênicos;
    - Sem conservantes artificiais;
```

## Data Descontinuação

_Opcional_

Formato: dd/mm/aaaa

Exemplo:
```
Data Descontinuação: 01/01/2022
```

## Data Lançamento

_Opcional_

Formato: dd/mm/aaaa

Exemplo:
```
Data Lançamento: 01/01/2022
```

## Tipo

**_Obrigatório_**

Valores aceitos: [tipo.yaml](config/tipo.yaml)

Exemplo:
```
Tipo: Seca
```

## Indicação

**_Obrigatório_**

Valores aceitos: [indicação.yaml](config/indicação.yaml)

Exemplo:
```
Tipo: Cães
```

## Marca e Linha

### Marca

**_Obrigatório_**

Qualquer valor

Exemplo:
```
Marca: Quatree
```

### Linha

_Opcional_

Qualquer valor

Exemplo:
```
Linha: Supreme
```

## Categoria

**_Obrigatório_**

Valores aceitos: [categoria.yaml](config/categoria.yaml)

Exemplo:
```
Categoria: Super Premium
```

## Idade

**_Obrigatório_**

Valores aceitos: [idade.yaml](config/idade.yaml)

Exemplo:
```
Idade: Idoso
```

## Portes

**_Obrigatório_**

Uma ração pode ser destinada a vários portes.

Exemplo:
```
Portes:
    - Médio
    - Grande
    - Gigante
```

Valores aceitos: [portes.yaml](config/portes.yaml)

## Raças

_Opcional_

Apenas para rações destinadas a raças específicas.

Exemplo:
```
Raças:
  - Dog Alemão
```
Valores aceitos: [raças.yaml](config/raças.yaml)

## Propósito

_Opcional_

Valores aceitos: [propósito.yaml](config/propósito.yaml)

Exemplo:

```
Propósito: Alta Perfomance
```

## Imagem URL

**_Obrigatório_**

URL em que tem foto da embalagem de ração.

Exemplo:
```
Imagem URL: https://www.comparadorderacao.com.br/storage/food/e367876c7871f2925d6cf4e0dd0c0b5c91e53fbf.jpg
```

## Site URL

_Opcional_

URL para acessar diretamente a página oficial da ração.

Exemplo:
```
Site URL: https://www.granvitapet.com.br/produto/quatree-supreme-adultos-racas-medias-e-grandes/cao
```

## Sabores

_Opcional_

Exemplo:
```
Sabores:
  - Carne
  - Frango
  - Cereais
```
Valores aceitos: [sabores.yaml](config/sabores.yaml)

## Transgênicos

_Opcional_

Valores aceitos:
 * **sim** - Possui transgênicos em sua composição;
 * **não** - Não possui transgêncis em sua composição;

Exemplo:
```
Transgênicos: sim
```

## Corantes Artificiais

_Opcional_

Valores aceitos:
 * **sim** - Possui Corantes Artificiais em sua composição;
 * **não** - Não possui Corantes Artificiais em sua composição;

Exemplo:
```
Corantes Artificiais: sim
```

## Conservantes Artificiais

_Opcional_

Valores aceitos:
 * **sim** - Possui Conservantes Artificiais em sua composição;
 * **não** - Não possui Conservantes Artificiais em sua composição;

Exemplo:
```
Conservantes Artificiais: sim
```

## Livre de Grãos:

_Opcional_

Valores aceitos:
 * **sim** - Possui grãos e cereais em sua fórmula;
 * **não** - Não possui grãos e cereais em sua fórmula;

Exemplo:
```
Livre de Grãos: sim
```

## Tamanho do Grão:

_Opcional_

Medir o grão e especificar em **mm(milímetro)** a maior medida encontrada. Não usar ponto, use vírgula caso precise.

Exemplo:
```
Tamanho do Grão: 16
```

## Energia Metabolizável

_Opcional_

Valor em kcal/kg. Não passar ponto ou vírgula. Evite carregar em seu sistema rações sem energia metabolizável, pois podem prejudicar no cálculo da porção diária.

Exemplo:
```
Energia Metabolizável: 4040
```

## Ingredientes

**_Obrigatório_**

Exemplo:
```
Ingredientes:
    - Farinha de Vísceras de Aves
    - Zeolita
    - Extrato de Yucca (Mín. 0,5%)
    - Vitaminas:
        - A
        - B2
    - Antioxidantes:
        - BHA
        - BHT
    - Transgênicos:
        - Streptomyces Viridochromogenes
        - Zea mays
    - Eventuais Substitutivos:
        - Farinha de Carne e Osso Bovino
        - Farinha de Soja
```

#### Dicas
* Trate as subseções **Transgênicos** e **Eventuais Substitutivos** como fossem ingredientes separados;
* Tenha uma tabela de equivalência de todos os items caso queira comparar as rações de maneira mais correta possível. A nossa está em fase de desenvolvimento e em breve será disponibilizada.
* Sabe programação? Leia a seção [Para Entusiastas - Ingredientes](#ingredientes-1);

## Enriquecimento por kg

**_Obrigatório_**

Exemplo:
```
Enriquecimento por kg:
    - Vitamina A 12000 UI
    - Vitamina B12 230 mcg
    - Vitamina C 100 mg
    - Vitamina D 1000 UI
```

Utilize vírgula para casa decimais. Não use ponto. A unidade de medida deve estar separada por um espaço da quantidade(medida).

Errados:
```
    - Vitamina K 800UI
    - Vitamina A 12.000UI
    - Vitamina C 12000.00 UI
    - Vitamina B 12000UI
    - Vitamina B6 13,00 mg 100%
    - Vitamina B12 (Mín.) 10% 13,00 mg
    - Vitamina B12 10% 13,00 mg
```

Corretos:
```
    - Vitamina K 800 UI
    - Vitamina A 1200 UI
    - Vitamina PP 12000 UI
    - Vitamina B6 13,00 mg
    - Vitamina (Mín.) B6 13,00 mg
```

#### Dicas
* Tenha uma tabela de equivalência de todos os items caso queira comparar as rações de maneira mais correta possível. A nossa está em fase de desenvolvimento e em breve será disponibilizada.
* Sabe programação? Leia a seção [Para Entusiastas - Níveis de Garantia e Enriquecimento por Kg](#níveis-de-garantia-e-enriquecimento-por-kg);

## Níveis de Garantia

**_Obrigatório_**

Exemplo:
```
Níveis de Garantia:
    - Proteína bruta (Mín.) 230,0 g/kg
    - Extrato etéreo (Mín.) 120,0 g/kg
    - Matéria mineral (Máx.) 68,0 g/kg
```

#### Dicas
* Tenha uma tabela de equivalência de todos os items caso queira comparar as rações de maneira mais correta possível. A nossa está em fase de desenvolvimento e em breve será disponibilizada.* Sabe programação? Leia a seção [Para Entusiastas - Níveis de Garantia e Enriquecimento por Kg](#níveis-de-garantia-e-enriquecimento-por-kg);

## Embalagens

**_Obrigatório_**

Valores aceitos: [embalagens.yaml](config/embalagens.yaml)

Tamanho da embalagem e endereços de URL para obter o preço da embalagem. Apenas o tamanho da embalagem é obrigatório.

Exemplo:
```
Embalagens:
    15kg:
    20kg:
        - https://www.cobasi.com.br/racao-golden-special-para-caes-adultos-frango-e-carne-3310549/p?idsku=684910
        - https://www.petz.com.br/produto/racao-golden-special-sabor-frango-e-carne-para-caes-adultos-71345
        - https://www.petlove.com.br/racao-golden-special-adulto-1014070/p?sku=31014070-2
```


#### Dicas
* Sabe programação? Leia a seção [Para Entusiastas - Embalagens](#embalagens-1);

## Porção Diária

**_Obrigatório_**

Porção diária recomendada para alimentação de acordo com a peso, idade e atividade física.

As atividades físicas válidas são essas:
* baixa
* normal
* alta
* intensa

#### Dicas
* Algumas rações consideram normal como baixa ou moderada;
* Geralmente pets filhotes sçao os que possuem uma diferenciação de porção por idade;

Exemplo para Filhotes:
```
Porção Diária:
    10kg:
        3 meses:
            normal: 100
        6 meses:
            normal: 200
        9 meses:
            normal: 300
    20kg:
        3 meses:
            normal: 300
        6 meses:
            normal: 400
        9 meses:
            normal: 500
```

Exemplo para Adultos e Idosos:
```
Porção Diária:
    5kg:
        normal: 80
    10kg:
        baixa: 100
        normal: 100
        alta: 120
        intensa: 180
    15kg:
        baixa: 130
        normal: 150
        alta: 230
```

# Para Entusiastas

Ingredientes, Níveis de Garantia e Enriquecimento por Kg quando foram obtidos do site oficial da ração ou da embalagem.

## Ingredientes

### Entrada

Copiando do site oficial, deve ser algo parecido com isto:
```
Farinha de vísceras de aves, zeolita, extrato de Yucca (mín. 0,5%), vitaminas(A, B6 e C), Antioxidantes BHA e BHT, corante artificial vermelho alura e maça desidratada. Eventuais substitutivos: farinha de Carne e Osso Bovino
e Farinha de Soja.

**Especíeis doadores de genes: Streptomyces viridochromogenes e Zea mays.
```

### Parser

* Trocar ', '(espaço e vírgula) por um \n(quebra de linha) ajuda no parser;
* Faça mais alguns ajustes finos;

O resultado deve ser isso:
```
[
    'Farinha de Vísceras de Aves',
    'Zeolita',
    'Extrato de Yucca (Mín. 0,5%)',
    'Vitaminas A',
    'Vitaminas C',
    'Vitaminas B6',
    'Antioxidantes BHA',
    'Antioxidantes BHT',
    'Corante Artificial Vermelho Alura',
    'Maça Desidratada',
    'Eventuais Substitutivos Farinha de Carne e Osso Bovino',
    'Eventuais Substitutivos Farinha de Soja',
    'Transgênicos Streptomyces Viridochromogenes',
    'Transgênicos Zea Mays',
    'Corante Artificial Vermelho Alura'
 ];
```

### Saída Sugerida

Tendo feito o parser, basta jogar os valores em sua tabela de equivalência.
```
  # ingredientes -> Equivalência
  Extrato de Yucca (Mín. 0,5%) -> Extrato de Yucca
  Maça Desidratada -> Frutos
  Vitaminas A -> Vitamina A
  Vitaminas C -> Vitamina C
  Vitaminas B6 -> Vitamina B6
  Transgênicos Streptomyces Viridochromogenes -> Transgênicos
  [...]
  Eventuais Substitutivos Farinha de Soja -> Eventuais Substitutivos
  Corante Artificial Vermelho Alura -> Outros
```

Salve tanto o nome original do ingrediente e a equivalência para facilitar comparações.

## Níveis de Garantia e Enriquecimento por Kg

### Sugestões
* Converta μg para mcg;
* Converta mcg para mg;
* Converta mg para g;
* Para UFC, salve o valor em string;
* Tenha uma tabela de unidades possíveis:
    * g;
    * g/kg;
    * kcal/kg;
    * kg;
    * mcg;
    * mg;
    * mg/kg;
    * UI;
    * μg;

### Parser

Sugerimos que o parser dos items de níveis de garantia e de enriquecimento por kg seja feito de trás para frente separando por espaço:

```
unidade de medida = último elemento após o parser por espaço;
quantidade = penúltimo elemento após o parser por espaço;
nome do item = todos os elementos com exceção do último e do penúltimo;
```

### Saída Sugerida

```
[
    'nome' => 'Vitamina A',
    'quantidade' => 12000,
    'unidade_de_medida' => 'UI',
]
```

### Embalagens

A importância de ter endereços URL das embalagens é para pesquisar o preço do produto e manter um histórico. Construir um crawler para isso ou utilizar alguma API pronta pode ser uma alternativa.


# Doações

**PIX CPF**
```
123.863.997-61
```
