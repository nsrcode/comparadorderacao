# Introdução

Este repositório armazena as rações cadastradas no site www.comparadorderacao.com.br e algumas regras de negócio. Tudo no formato YAML(https://en.wikipedia.org/wiki/YAML) para que entusiastas possam utilizar e contribuir para que possamos auxiliar à tutores de pets a darem a melhor alimentação para os seus bichinhos.


# Missão

Contribuir, Educar e auxiliar aos tutores de pets a escolherem uma alimentação de qualidade e barata dando uma vida mais saúdavel para os seus pets.


# Aviso

- Siga sempre as orientações do veterinário do seu bichinho;
- Siga sempre as instruções indicadas na embalagem da ração;
- Pesquise o preço em pet shops da sua região antes de comprar pela internet;
- Não queremos fazer propaganda de produto ou fornecedor;

# Estrutura de diretórios e nomenclatura sugerida

```
Rações/
├── Cães
│   └── Marca e Linha
│       └── Marca e Linha - Tipo - Indicação - (opcional) Data Descontinuada.yaml
└── Gatos
...
```

# Seções

## Data-Descontinuação

_Opcional_
 
 dd/mm/aaaa

## Data-Lançamento

_Opcional_

dd/mm/aaaa

## Tipo

**_Obrigatório_**

Valores aceitos: [tipo.yaml](configs/tipo.yaml)

## Indicação

**_Obrigatório_**

Valores aceitos: [indicação.yaml](configs/indicação.yaml)
