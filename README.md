# Automação de API 

Esse projeto foi desenvolvido para rodar com Ruby, Httparty e Cucumber.

### Pré-requisitos

- Gerenciador de versões Ruby `v2.5.1`
- Bundler instalado `gem install bundler` 

#### Dica
Tutorial para ajudar na instalação do RVM(Gerenciador de versões)
- [RVM](https://rvm.io/rvm/install)

Após concluir a instalação dos pré-requisitos, dentro do diretório do projeto de automação de API, rodar o comando para instalação das dependências.

```
bundle install
```
### Para rodar os testes

- Execução utilizando tags (@cadastro, @excluir)
    ```
    Ex.: cucumber -t @cadastro
    ```
- Foram criados alguns profiles para facilitar a execução dos testes e geração de relatórios, podem ser conferidos no arquivo `cucumber.yml` 
    ```
    Ex.: cucumber -p excluir
    ```
#### CI
No Jenkins executar as seguintes etapas: 
 - Criar um novo item
 - Pipeline
 - Em Pipeline escolher a definição `Pipeline script from SCM`
 - SCM - Github
 - Informar o github desse projeto e salvar

As definições do Pipeline estão no arquivo `Jenkinsfile`
