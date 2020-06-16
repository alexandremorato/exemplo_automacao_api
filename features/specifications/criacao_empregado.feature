#language: pt
@cadastro
Funcionalidade: Criação de empregado

Como serviço 
Preciso que seja criado uma funcionalidade de cadastro de empregados
Para que seja possivel a inclusão de novos empregados

Contexto:
    Dado que não exista um empregado cadastrado no serviço    

Esquema do Cenário: Cadastro de empregado
    Quando realizar o cadastro de um novo empregado com os seguintes dados:
      | Nome    | <Nome>    |
      | Salário | <Salário> |
      | Idade   | <Idade>   |
    Então o cadastro deve ser realizado com sucesso

  Exemplos:
        | Nome   | Salário | Idade |
        | Maria  | 1000    | 22    |
        | Marcos | 2000    | 35    |

Esquema do Cenário: Cadastro de empregado com valores inválidos
    Quando realizar o cadastro de um novo empregado com os seguintes dados:
      | Nome    | <Nome>    |
      | Salário | <Salário> |
      | Idade   | <Idade>   |
    Então o cadastro deve ser realizado com sucesso

  Exemplos:
      | Nome   | Salário | Idade |
      |        | 1000    | 22    |
      | Carlos |         | 35    |
      | Luis   | 2000    |       |
      |        |         |       |   