---
title: "The Dystopian Truth About Github Copilot (Programmers Need Not Apply)"
date: 2021-07-02
description: "Why should programmers be concerned about the rise of code-generating AIs?"
menu:
  sidebar:
    name: Github Copilot
    identifier: github-copilot
    weight: 30
hero: head.png
math: true
tags: ["copilot","ai"]
---

This week the arrival of [Github Copilot](https://copilot.github.com/ "Github Copilot") has caught the eyes of the software developer community by its rather impressive functioning ~~although still imperfect~~, **but was the community concerned as it should?**

[comment]: {{< twitter user="github" id="1409883156333879300" >}}

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Meet GitHub Copilot - your AI pair programmer. <a href="https://t.co/eWPueAXTFt">https://t.co/eWPueAXTFt</a> <a href="https://t.co/NPua5K2vFS">pic.twitter.com/NPua5K2vFS</a></p>— GitHub (@github) <a href="https://twitter.com/github/status/1409883156333879300?ref_src=twsrc%5Etfw">June 29, 2021</a></blockquote> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

[OpenAI](https://openai.com/ "OpenAI") and [GitHub](https://github.com/ "GitHub") have announced the **technical preview** of an AI that promises to be your new **pair programmer**. `Copilot` works as an extension to IDEs, so far compatible with VSCode, similar to IA-powered code completion tools like [Tabnine](https://www.tabnine.com/ "Tabnine"), however with fundamental differences.

# How does Copilot work?

The tool is the result of an investment of [$1 billion](https://news.microsoft.com/2019/07/22/openai-forms-exclusive-computing-partnership-with-microsoft-to-build-new-azure-ai-supercomputing-technologies/) from [Microsoft](https://www.microsoft.com/ "Microsoft") at OpenAI, a company specialized in the development and research of `Artificial General Intelligence`. "`Copilot` automatically fills in code snippets, suggests new lines, and can even write entire functions based on the description provided", said Github CEO, Nat Friedman, in a [blog post](https://github.blog/2021-06-29-introducing-github-copilot-ai-pair-programmer/ "blog post").

![Github Copilot](https://miro.medium.com/v2/resize:fit:1400/format:webp/0*FkEI-48G2fKcC6K-)

At its core, `Copilot` uses a new code generation algorithm from OpenAI called `Codex`. OpenAI CEO, Greg Brockman, describes it as a descendant of GPT-3, but with a focus on code generation. The `Codex` algorithm was trained on terabytes of public code extracted from GitHub and [StackOverflow](https://stackoverflow.com/ "StackOverflow"). **This gives the tool the ability to write context-based code with unprecedented precision.**

> You can have fun with some AI suggestions for philosophical codes on [Max Woolf's blog post](https://minimaxir.com/2021/06/gpt-j-6b/).

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

# The Inevitability of Automation

But are the intentions of Microsoft (a multi-billion dollar company) purely benevolent and pro-community? As much as a company is community-friendly, **the principle of capitalism is profit**, and the profit made by eliminating the highly skilled and expensive programmers outweigh any publicized friendly benefits.

At first you can reject the idea that your job is going to be taken over by a code-generating AI, after all a programmer had to create the AI code in the first place, right?

Wrong. We tend to stick to a comfortable lie to have a false sense of security, but in reality **cognitive automation has been going on for a long time**, as explained in this excellent video from [CGP Grey](https://www.youtube.com/user/cgpgrey) channel.

{{< youtube id="7Pq-S557XQU" >}}

No matter how specialized a workforce, it ends up being replaced, **automation is inevitable**. After all, no one needs a top-of-the-line solution 100% of the time, often a mid-range solution is enough. Several similar examples have already taken place, so in an era where code can be generated by AIs, **entry into the workforce will become increasingly difficult.**

# The dystopian truth

The parallel between the inevitability of automation and what the AI developed for Github Copilot represents is very well drawn in this video from the [Fireship](https://www.youtube.com/channel/UCsBjURrPoezykLs9EqgamOA) channel. And after analyzing the past, it becomes much harder to believe in an optimistic future.

{{< youtube id="4duqI8WyfqE" >}}

For now, the tool will be used to help programmers perform their role better, but in the not-too-distant future AI will have learned and surpassed its own creators. Whether we are indeed "digging our own pits" toward a dystopian future for programming jobs, only time will tell.

But on the bright side we will have more free time :smile:

# Further reading

* [https://copilot.github.com/](https://copilot.github.com/ "https://copilot.github.com/")
* [https://github.blog/2021-06-29-introducing-github-copilot-ai-pair-programmer/](https://github.blog/2021-06-29-introducing-github-copilot-ai-pair-programmer/ "https://github.blog/2021-06-29-introducing-github-copilot-ai-pair-programmer/")
* [https://minimaxir.com/2021/06/gpt-j-6b/](https://minimaxir.com/2021/06/gpt-j-6b/ "https://minimaxir.com/2021/06/gpt-j-6b/")
* [https://thenewstack.io/github-copilot-a-powerful-controversial-autocomplete-for-developers/](https://thenewstack.io/github-copilot-a-powerful-controversial-autocomplete-for-developers/ "https://thenewstack.io/github-copilot-a-powerful-controversial-autocomplete-for-developers/")
* [https://towardsdatascience.com/should-we-be-worried-now-that-github-copilot-is-out-12f59551cd95](https://towardsdatascience.com/should-we-be-worried-now-that-github-copilot-is-out-12f59551cd95 "https://towardsdatascience.com/should-we-be-worried-now-that-github-copilot-is-out-12f59551cd95")
