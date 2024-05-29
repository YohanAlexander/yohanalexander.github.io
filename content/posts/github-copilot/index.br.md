---
title: "A verdade distópica sobre o Github Copilot (Programadores Não Precisam Se Candidatar)"
date: 2021-07-02
description: "Porquê os programadores deveriam ficar preocupados com a acensão das IAs geradoras de código?"
menu:
  sidebar:
    name: Github Copilot
    identifier: github-copilot
    weight: 30
hero: head.png
math: true
tags: ["copilot","ai"]
---

Essa semana a chegada do [Github Copilot](https://copilot.github.com/ "Github Copilot") agitou a comunidade dos desenvolvedores de software por seu funcionamento bastante impressionante ~~apesar de ainda imperfeito~~, **mas será que a comunidade ficou preocupada como deveria?**

[comment]: {{< twitter user="github" id="1409883156333879300" >}}

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Meet GitHub Copilot - your AI pair programmer. <a href="https://t.co/eWPueAXTFt">https://t.co/eWPueAXTFt</a> <a href="https://t.co/NPua5K2vFS">pic.twitter.com/NPua5K2vFS</a></p>— GitHub (@github) <a href="https://twitter.com/github/status/1409883156333879300?ref_src=twsrc%5Etfw">June 29, 2021</a></blockquote> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

A [OpenAI](https://openai.com/ "OpenAI") e o [GitHub](https://github.com/ "GitHub") anunciaram o **technical preview** da IA que promete ser o seu novo **pair programmer**. O `Copilot` funciona como uma extensão as IDEs, compativível até agora com o VSCode, semelhante as ferramentas para autocomplete de código alimentada por IAs como o [Tabnine](https://www.tabnine.com/ "Tabnine"), porém com diferenças fundamentais.

# Como o Copilot funciona?

A ferramenta é fruto do investimento de [1 bilhão de doláres](https://news.microsoft.com/2019/07/22/openai-forms-exclusive-computing-partnership-with-microsoft-to-build-new-azure-ai-supercomputing-technologies/) da  [Microsoft](https://www.microsoft.com/ "Microsoft") na OpenAI, uma empresa especializada no desenvolvimento e pesquisa de `Artificial General Intelligence`. "O `Copilot` preenche automaticamente trechos de código, sugere novas linhas e pode até mesmo escrever funções inteiras com base na descrição fornecida", disse o CEO do Github, Nat Friedman, em um [blog post](https://github.blog/2021-06-29-introducing-github-copilot-ai-pair-programmer/ "blog post").

![Github Copilot](https://miro.medium.com/v2/resize:fit:1400/format:webp/0*FkEI-48G2fKcC6K-)

Em sua essência, o `Copilot` usa um novo algoritmo de geração de código da OpenAI chamado `Codex`. O CEO da OpenAI, Greg Brockman, o descreve como descendente da GPT-3, mas com foco em geração de código. O algoritmo `Codex` foi treinado em terabytes de código público extraído do GitHub e [StackOverflow](https://stackoverflow.com/ "StackOverflow"). **Isso dá à ferramenta a capacidade de escrever código baseado em contexto com precisão sem precedentes.**

> Você pode se divertir com algumas sugestões de IAs para códigos filosóficos no [blog post do Max Woolf](https://minimaxir.com/2021/06/gpt-j-6b/).

```python
def should_terminate(Person):
    """Check whether a Person should be terminated"""

    if Person.id > 10:
        #terminate
        return True
    else:
        #continue
        return False
```

# A inevitabilidade da automação

Mas será que as intenções da Microsoft (uma empresa multi-bilionária) são puramente benevolentes e a favor da comunidade? Por mais que uma empresa seja amiga da comunidade, **o princípio do capitalismo é o lucro**, e o lucro obtido ao eliminar a mão de obra especializada e bastante cara de programadores supera qualquer benefício amigável divulgado.

A princípio você pode rejeitar a ideia de que seu emprego vai ser tomado por uma IA geradora de códigos, afinal um programador teve que criar o código da IA em primeiro lugar, certo?

Errado. A gente tende a se prender a uma mentira confortável para ter um falso senso de segurança, mas na realidade **a automação cognitiva já vem acontecendo de longa data**, como é explicado neste excelente vídeo do canal [CGP Grey](https://www.youtube.com/user/cgpgrey).

{{< youtube id="7Pq-S557XQU" >}}

Por mais especializada que seja uma mão de obra, ela acaba sendo substituída, **a automação é inevitável**. Afinal, ninguém precisa de uma solução top de linha 100% do tempo, muitas vezes uma solução mediana é suficiente. Diversos exemplos semelhantes já aconteceram, e por isso, em uma era onde código pode ser gerado por IAs, **a entrada no mercado de trabalho se tornará cada vez mais difícil.**

# A verdade distópica

O paralelo entre a inevitabilidade da automação, e o que a IA desenvolvida para o Github Copilot representam é muito bem traçada neste vídeo do canal [Fireship](https://www.youtube.com/channel/UCsBjURrPoezykLs9EqgamOA). E após analisar o passado, fica bem mais difícil acreditar em um futuro otimista.

{{< youtube id="4duqI8WyfqE" >}}

Por enquanto, a ferramenta será usada para auxiliar os programadores a desempenhar sua função melhor, porém em um futuro não tão distante a IA terá aprendido e superado seus próprios criadores. Se de fato estamos "cavando nossas próprias covas" em direção a um futuro distópico para as vagas em programação, somente o tempo dirá.

Mas pelo lado bom teremos mais tempo livre :smile:

# Leituras complementares

* [https://copilot.github.com/](https://copilot.github.com/ "https://copilot.github.com/")
* [https://github.blog/2021-06-29-introducing-github-copilot-ai-pair-programmer/](https://github.blog/2021-06-29-introducing-github-copilot-ai-pair-programmer/ "https://github.blog/2021-06-29-introducing-github-copilot-ai-pair-programmer/")
* [https://minimaxir.com/2021/06/gpt-j-6b/](https://minimaxir.com/2021/06/gpt-j-6b/ "https://minimaxir.com/2021/06/gpt-j-6b/")
* [https://thenewstack.io/github-copilot-a-powerful-controversial-autocomplete-for-developers/](https://thenewstack.io/github-copilot-a-powerful-controversial-autocomplete-for-developers/ "https://thenewstack.io/github-copilot-a-powerful-controversial-autocomplete-for-developers/")
* [https://towardsdatascience.com/should-we-be-worried-now-that-github-copilot-is-out-12f59551cd95](https://towardsdatascience.com/should-we-be-worried-now-that-github-copilot-is-out-12f59551cd95 "https://towardsdatascience.com/should-we-be-worried-now-that-github-copilot-is-out-12f59551cd95")
