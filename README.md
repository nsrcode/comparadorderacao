# Introdução

Este repositório armazena as rações cadastradas no site www.comparadorderacao.com.br e algumas regras de negócio. Tudo no formato [YAML](https://pt.wikipedia.org/wiki/YAML) para que entusiastas possam utilizar e contribuir para que possamos auxiliar à tutores de pets a darem a melhor alimentação para os seus bichinhos.


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
│   └── Marca e Linha
│       └── $Tipo$ $Marca$ (opcional)$Linha$ para $Indicação$ (opcional)$Raças$ (opcional)$Propósitos$ (opcional)$Data Descontinuada$.yaml
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

## Marca e Linha

### Marca 

**_Obrigatório_**

Qualquer valor

### Linha

_Opcional_

Qualquer valor

## Idade

**_Obrigatório_**

Valores aceitos: [idade.yaml](configs/idade.yaml)

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

Valores aceitos: [portes.yaml](configs/portes.yaml)

## Raças

_Opcional_

Apenas para rações destinadas a raças específicas.

Exemplo:
```
Raças:
  - Dog Alemão
```
Valores aceitos: [raças.yaml](configs/raças.yaml)

## Propósitos

_Opcional_

Valores aceitos: [propósitos.yaml](configs/propósitos.yaml)

Exemplo:

```
Propósitos:
  - Light
  - Tratamento Renal
  - Hipoalergênica
  - Alta Perfomance
```

## Categoria

**_Obrigatório_**

Valores aceitos: [categoria.yaml](configs/categoria.yaml)
