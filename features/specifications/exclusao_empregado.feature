#language: pt
@excluir
Funcionalidade: Exclusão de empregado

Como serviço 
Preciso que seja criado uma funcionalidade para exclusão de empregados
Para que seja possivel a exclusão de empregados especificos

Contexto:
    Dado que exista um empregado cadastrado

Cenário: Exclusão de empregado cadastrado
    Quando realizar a exclusão de um empregado
    Então a exclusão deve ser realizado com sucesso

Cenário: Tentativa de exclusão de empregado já excluido
    Quando realizar a exclusão de um empregado
        E tentar excluir novamente o empregado
    Então o serviço não deve permitir a exclusão    