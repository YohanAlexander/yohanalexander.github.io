---
title: "Mensagens de commit são subestimadas (e não deveriam)"
tagline: "Porquê mensagens de commit são importantes e como se tornar um artesão ao escrevê-lás."
excerpt: "Porquê mensagens de commit são importantes e como se tornar um artesão ao escrevê-lás."
header:
  teaser: https://chris.beams.io/content/images/size/w2000/2021/01/git_commit_2x.png
  overlay_image: https://chris.beams.io/content/images/size/w2000/2021/01/git_commit_2x.png
  overlay_filter: 0.6
  caption: "Photo credit: [**xcd**](https://xkcd.com/1296/)"
  actions:
    - label: "🇺🇸 English"
      url: /posts/2021/04/commit-messages-are-underestimated/
    - label: "🇧🇷 Português"
      url: /posts/2021/04/mensagens-de-commit-sao-subestimadas/
date: 2021-04-30
permalink: /posts/:year/:month/:slug/
tags:
  - git
  - github
  - good-practices
categories:
  - posts
  - pt-br
---

Todo desenvolvedor que já passou o mínimo de tempo navegando o histórico de um repositório sabe: **mensagens de commits são importantes**.

Mas se isso é uma verdade bem estabelecida, por que quem já tem um certo nível de experiência com versionamento de código acaba negligenciando as mensagens de commit?

[![Work Chronicles](https://i0.wp.com/workchronicles.com/wp-content/uploads/2020/08/Small-Changes.png)](https://workchronicles.com/commit-messages/)

Assim como qualquer outra boa prática de programação ou versionamento de código, as mensagens de commit requerem consciência. E independente da senioriade do desenvolvedor, existem fatores que podem atrapalhar a escrita de uma boa mensagem.

* **Pressa** ~~a inimiga da perfeição~~

> Tem que subir pra produção ainda hoje...

* **Preguiça**

Você pode se iludir por ideias como "são apenas alterações triviais", "mas ninguém vai ler isso depois", "todos sabem o que estou fazendo".

As mensagens devem comunicar de forma adequada o `PORQUE` de uma alteração ter sido feita. Entender que o histórico deve permanecer com o contexto de cada mudança ocorrida, faz a colaboração e o desenvolvimento mais eficientes.

* **Falta de atomicidade**

Sabe quando você se atrapalha muito na hora de escrever uma mensagem porque nada descreve o contexto completo da mudança?

Commits que englobam muitas mudanças são uma prática ruim de versionamento, e a própria confusão ao criar uma mensagem já indica isso. A lógica das alterações devem ser divididas em [átomos](https://www.freshconsulting.com/atomic-commits/), unidades bem simples que implementam uma única funcionalidade ou corrigem um erro específico. E os commits são uma instância dessas alterações, uma representação simplificada do que a lógica completa representa.

Em posts futuros falarei sobre como usar a ferramenta do [GIT](/tags/#git) de forma eficiente e a seu favor, exemplificando quando, onde e como commitar.

* **Imprudência**

Você já sabe que é importante, tem a expertise da ferramenta, e ainda assim decide fazer errado. ~~shame on you~~


# Por que escrever uma excelente mensagem de commit?

Mas se ainda assim você não se sentiu convencido do porque escrever uma excelente mensagem de commit, vamos recriar um cenário comum na carreira dos desenvolvedores.

Você recebe do seu PO uma demanda de prioridade média com a task "corrigir erro no cadastro de usuários". Determinado a resolver o problema de forma eficiente, você navega pelo repositório para encontrar o bug no escopo do cadastro. Para a sua surpresa, os métodos não tem documentação, nem testes, e você não entende absolutamente nada pelo diff dos arquivos modificados. O `git blame` aponta que o último commit foi feito há 1 mês às 01:37 da manhã de uma sexta-feira com a mensagem "pequenas alterações". Após respirar fundo por ter a sua paz interior brevemente abalada, você checa o `git log` para entender os commits anteriores, e se depara com mensagens bastante _explicativas_ como "consertando bug", "adicionando método", "fazendo alterações no método", "melhorando correções", e etc.

> Uma mensagem de commit bem pensada é a melhor maneira de comunicar o contexto de uma mudança, seja para outros desenvolvedores, ou até para você mesmo no futuro.

# Mas como se tornar um artesão de mensagens de commit?

Antes de tudo é preciso entender que mensagens de commit excelentes não surgem por acaso. Você nunca irá se deparar com um histórico de mensagens impecável, onde os colaboradores não tiveram o cuidado necessário com cada um dos commits. Excelência
é fruto de boas práticas aplicadas no dia a dia.

E para guiar nossas práticas, existem as convenções e padronizações (cada time deve entrar em acordo do que melhor se adequa a sua realidade).

## O Conventional Commits

O [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) -ou commits semânticos- é uma convenção de mensagens de commit, para ajudar a manter um histórico de commits explícito e bem estruturado. Ao seguir esse tipo de convenção, podemos automatizar a criação de [CHANGELOGs](https://keepachangelog.com/en/1.0.0/), facilitar a entrada de novos desenvolvedores no projeto, além de conseguir entender onde está se concentrando as horas do projeto (em refatoração de código, criação de features, ou fix de bugs).

Para quem ainda não conhece, esse é o formato padrão de um commit semântico:

```
[tipo](escopo opcional): [assunto]

[corpo opcional]

[rodapé opcional]
```

Um exemplo prático:

```
fix(containers/profile): adjust argument of  getThumbnailImage function

getThumbnailImage used to receive argument of type XPTO.
Now receives the correct argument of type FOO.


Solves issue #132
```

### Tipos de commits

O tipo de um commit é a descrição inicial do que o commit está realizando e são uma lista bem definida:

* **test**: indica qualquer tipo de criação ou alteração de códigos de teste. Exemplo: Criação de testes unitários.
* **feat**: indica o desenvolvimento de uma nova feature ao projeto. Exemplo: Acréscimo de um serviço, funcionalidade, endpoint, etc.
* **refactor**: usado quando houver uma refatoração de código que não tenha qualquer tipo de impacto na lógica ou regras de negócio do sistema. Exemplo: Mudanças de código após um code review.
* **style**: empregado quando há mudanças de formatação e estilo do código que não alteram o sistema de nenhuma forma. Exemplo: Mudar o style-guide, arrumar indentações, remover espaços em brancos, remover comentários, etc.
* **fix**: utilizado quando há correção de erros que estão gerando bugs no sistema. Exemplo: Aplicar tratativa para uma função que não está tendo o comportamento esperado e retornando erro.
* **chore**: indica mudanças no projeto que não afetem o sistema ou arquivos de testes. Exemplo: Mudar variáveis de ambiente em arquivos .env, adicionar mais extensões de arquivos ao .gitignore.
* **docs**: usado quando há mudanças na documentação do projeto. Exemplo: adicionar informações na documentação da API, mudar o README, etc.
* **build**: utilizada para indicar mudanças que afetam o processo de build do projeto ou dependências externas. Exemplo: adicionar ou remover dependências do requirements do projeto, etc.
* **perf**: indica uma alteração que melhorou a performance do sistema. Exemplo: alterar ForEach por while, melhorar a query ao banco, etc.
* **ci**: utilizada para mudanças nos arquivos de configuração de CI. Exemplo: Circle, Travis, BrowserStack, etc.
* **revert**: indica a reversão de um commit anterior.

### Escopos de commits

O escopo do commit é uma parte opcional, curta e de fácil compreensão.  É nela que iremos indicar qual parte do código foi modificada, como a camada de um microsserviço por exemplo. Em geral, a utilização do escopo é bem genérica, podendo por exemplo associar a numeração de tasks caso sua equipe siga alguma metodologia ágil.

### Corpos de commits

O corpo, por sua vez, vai conter descrições mais precisas do que está contido naquele commit, mostrando as razões ou consequências geradas por esse código.

### Rodapés de commits

O rodapé restringe-se às alterações de estado, como resoluções do estado de issues ou associação de uma task. Exemplo: "resolves issue #312".

### Assuntos de commits

O assunto -ou mensagem- é obrigatório, e por isso é a parte mais importante do padrão, e deve ser suficientemente clara sobre o porque das alterações no commit. Lembre que o `diff` das alterações te diz o que mudou, mas somente a mensagem representa de forma eficiente o `PORQUE` das alterações.

No [artigo](https://chris.beams.io/posts/git-commit/) de Chris Beams são definidas também 7 regras para uma boa mensagem:

1. [Separe o assunto do corpo com uma linha em branco](https://chris.beams.io/posts/git-commit/#separate)
2. [Limite a linha de assunto a 50 caracteres](https://chris.beams.io/posts/git-commit/#limit-50)
3. [Coloque a linha de assunto em maiúscula](https://chris.beams.io/posts/git-commit/#capitalize)
4. [Não termine a linha de assunto com um ponto](https://chris.beams.io/posts/git-commit/#end)
5. [Use o modo imperativo na linha de assunto](https://chris.beams.io/posts/git-commit/#imperative)
6. [Envolva o corpo em até 72 caracteres](https://chris.beams.io/posts/git-commit/#wrap-72)
7. [Use o corpo para explicar o quê e por quê vs. como](https://chris.beams.io/posts/git-commit/#why-not-how)

Não vou me aprofundar em cada regra, pois a maioria já é auto explicativa. Mas para alguns, a regra 5, sobre escrever a mensagem no imperativo gera um leve estranhamento inicial, pois a mudança implementada foi uma "ação passada", mas ao escrever mensagens utilizando o modo imperativo nós estamos dizendo **o que o commit faz se aplicado**.

Se você fosse fizer um cherry-pick (copiar um commit de uma brancha pra outra) ou um revert por exemplo, aquele commit vai "realizar uma tarefa" não vai "realizou uma tarefa".

A regra de ouro é que a mensagem deve completar a frase:

> Se aplicado, esse commit vai `mensagem de commit aqui`

```bash
git commit -m "<mensagem de commit aqui>"
```

Por fim, veja o exemplo real de um commit feito para o repositório core do [Bitcoin](https://github.com/bitcoin/bitcoin/commit/eb0b56b19017ab5c16c745e6da39c53126924ed6):

```
commit eb0b56b19017ab5c16c745e6da39c53126924ed6
Author: Pieter Wuille <pieter.wuille@gmail.com>
Date:   Fri Aug 1 22:57:55 2014 +0200

   Simplify serialize.h's exception handling

   Remove the 'state' and 'exceptmask' from serialize.h's stream
   implementations, as well as related methods.

   As exceptmask always included 'failbit', and setstate was always
   called with bits = failbit, all it did was immediately raise an
   exception. Get rid of those variables, and replace the setstate
   with direct exception throwing (which also removes some dead
   code).

   As a result, good() is never reached after a failure (there are
   only 2 calls, one of which is in tests), and can just be replaced
   by !eof().

   fail(), clear(n) and exceptions() are just never called. Delete
   them.
```

# Leituras complementares

* [How to Write a Git Commit Message](https://chris.beams.io/posts/git-commit/)
* [On Commit Messages](https://who-t.blogspot.com/2009/12/on-commit-messages.html)
* [A Note About Git Commit Messages](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
* [Commit Guidelines](https://www.git-scm.com/book/en/v2/Distributed-Git-Contributing-to-a-Project#_commit_guidelines)
* [Keep Your Commits "Atomic"](https://www.freshconsulting.com/atomic-commits/)
* [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
* [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
