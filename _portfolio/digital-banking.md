---
title: "API Restful simulando um banco digital"
tagline: "API de transferência entre contas internas de um banco digital."
excerpt: "API de transferência entre contas internas de um banco digital."
header:
  teaser: https://user-images.githubusercontent.com/39287022/101106335-95e00400-35ae-11eb-8abd-b710f306dc0d.png
  overlay_image: https://kinsta.com/pt/wp-content/uploads/sites/3/2019/06/que-e-o-github-1024x512.png
  caption: "Photo credit: [**Kinsta**](https://kinsta.com/pt/base-de-conhecimento/que-github/)"
  actions:
    - label: "Github"
      url: "https://github.com/YohanAlexander/digital-banking/"
collection: portfolio
---

# API Restful simulando um banco digital

## Sobre o projeto

O projeto consiste em uma API de transferência entre contas internas de um banco digital que usa o formato JSON para leitura e escrita.

## Entidades da API

### A entidade `Account` possui os seguintes atributos:

* `id`
* `name`
* `cpf`
* `secret`
* `balance`
* `created_at`

### A entidade `Login` possui os seguintes atributos:

* `cpf`
* `secret`

### A entidade `Transfer` possui os seguintes atributos:

* `id`
* `account_origin_id`
* `account_destination_id`
* `amount`
* `created_at`

## Rotas da API

| Metódo | URL                            | Descrição                                        | Autenticação |
|--------|--------------------------------|--------------------------------------------------|--------------|
| GET    | /accounts                      | retorna a lista de contas no banco               | Não          |
| GET    | /accounts/{account_id}/balance | retorna o saldo da conta no banco                | Não          |
| POST   | /accounts                      | cria uma conta no banco                          | Não          |
| POST   | /login                         | autentica a conta no banco e retorna o token JWT | Não          |
| GET    | /transfers                     | retorna as transferências da conta no banco      | Sim          |
| POST   | /transfers                     | transfere de uma conta para outra no banco       | Sim          |


## Documentação

Uma documentação online completa das rotas da API e dos corpos de requisição e resposta pode ser vista em [Postman](https://documenter.getpostman.com/view/12847022/TVmMgxjU).

## Dependências

O projeto foi estruturado em containers e para o deploy são necessárias as dependências:

* [Docker](https://docs.docker.com/engine/install/)
* [Docker-Compose](https://docs.docker.com/compose/install/)
* [GNU Make](https://www.gnu.org/software/make/)

## Configurações da API

O projeto faz uso de variáveis de ambiente que são definidas no arquivo `.env`:

```
BUILD_TARGET="development"
DEBUG_MODE="false"
TOKEN_KEY="gophers"
SERVER_ADDRESS="8080"
POSTGRES_PASSWORD="root"
POSTGRES_USER="postgres"
POSTGRES_PORT="5432"
POSTGRES_HOST="db"
POSTGRES_DB=""
```

### Build target

É o target para o build multi-stage do docker-compose. "development" faz live-reload do código fonte, "production" faz compilação do binário estático.

### Debug mode

É o modo que será utilizado no ambiente. "true" faz uso do modo Debug que mostra as consultas SQL, "false" faz uso do modo Silent sem retorno das consultas.

### Token key

É a chave `salt` usada para gerar a criptografia do token JWT.

### Server address

É a porta na qual o servidor será disponibilizado.

### Postgres

São as configurações para o DSN do banco de dados: usuário, senha, host, porta, database.

## Uso da API

Para iniciar a API localmente com as dependências já instaladas use o comando:

``` sh
make run
```

Para ver os logs da API use o comando:

``` sh
make logs
```

Para desligar a API use o comando:

``` sh
make stop
```

## Testando a API

Para fazer requisições e testar a API use alguma ferramenta como o [HTTPie](https://httpie.io/) ou [Postman](https://www.postman.com/). A documentação já conta com as [collections](https://documenter.getpostman.com/view/12847022/TVmMgxjU) para os testes.
