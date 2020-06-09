---
title: "CRUD e API Rest com Django Framework"
tagline: "API Restful aninhada com Django Rest Framework."
excerpt: "API Restful aninhada com Django Rest Framework."
header:
  teaser: https://raw.githubusercontent.com/YohanAlexander/api-ma9/master/crud.png
  overlay_image: images/github.png
  caption: "See this project on Github: [**Source Code**](https://github.com/yohanalexander/api-ma9)"
collection: portfolio
---

# Desafio ma9

## Sobre o projeto

O projeto foi desenvolvido como desafio para uma vaga de trainee na empresa ma9. O projeto consiste em uma API Restful com rotas aninhadas de acordo com a herança um para muitos das tabelas do banco de dados. A arquitetura backend do projeto foi implementado com o uso do frameworks `Django` e `Django Rest`. O diagrama de classes do banco de dados é apresentado abaixo:

![Diagrama](https://raw.githubusercontent.com/YohanAlexander/api-ma9/master/crud.png)

### Instalando dependências

Na raiz do projeto acesse o terminal e execute:
```
pip install pipenv
pipenv install
```

### Criando o banco de dados

Crie o banco de dados `SQL` com base nos modelos:

```
python manage.py makemigrations
python manage.py migrate
```

### Criando um usuário

Crie um usúario para acessar a área administrativa:

```
python manage.py createsuperuser
```

### Servindo o projeto

Use o servidor para ambiente de desenvolvimento do `Django`:

```
python manage.py runserver
firefox localhost:8000
```

### Acessando o CRUD

Abra o navegador e acesse o CRUD para alterar o banco de dados:

```
firefox localhost:8000/admin
```

### Acessando a API

Abra o navegador e acessa a API para alterar o banco de dados:

```
firefox localhost:8000/api/cliente/<pk>/endereco/<pk>
```

