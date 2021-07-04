---
title: Commit messages are underestimated (and shouldn't be)
tagline: Why commit messages are important and how to become an craftsman on writing
  them.
excerpt: Why commit messages are important and how to become an craftsman on writing
  them.
header:
  teaser: https://chris.beams.io/content/images/size/w2000/2021/01/git_commit_2x.png
  overlay_image: https://chris.beams.io/content/images/size/w2000/2021/01/git_commit_2x.png
  overlay_filter: "0.6"
  caption: 'Photo credit: [**xcd**](https://xkcd.com/1296/)'
  actions:
  - label: "\U0001F1FA\U0001F1F8 English"
    url: "/posts/2021/04/commit-messages-are-underestimated/"
  - label: "\U0001F1E7\U0001F1F7 Português"
    url: "/posts/2021/04/mensagens-de-commit-sao-subestimadas/"
date: 2021-04-30
permalink: "/posts/:year/:month/:slug/"
tags:
- git
- github
- good-practices
categories:
- posts
- en
- tutorials

---
Any developer who has spent the minimum amount of time browsing a repository's history knows: **commit messages are important**.

But if this is a well-established truth, why does anyone who already has a certain level of experience with code versioning end up neglecting commit messages?

[![Work Chronicles](https://i0.wp.com/workchronicles.com/wp-content/uploads/2020/08/Small-Changes.png)](https://workchronicles.com/commit-messages/)

As with any good programming or code versioning practice, commit messages require awareness. And regardless of the seniority of the developer, there are factors that can hinder the writing of a good message.

* **Hurry** ~~the enemy of perfection~~

> It has to be deployed to production today...

* **Laziness**

You may be deluded by ideas like "these are just trivial changes", "but nobody will read this later", "everyone knows what I'm doing".

The messages must adequately communicate the `WHY` a change has been made. Understanding that the history must remain with the context of each change that occurred, makes collaboration and development more efficient.

* **Lack of atomicity**

Do you know when you get so messed up when writing a message because nothing describes the full context of the change?

Commits that encompass many changes are bad versioning practice, and the confusion in creating a message already indicates this. The logic of the changes must be divided into [atoms](https://www.freshconsulting.com/atomic-commits/), very simple units that implement a single functionality or correct a specific error. And commits are an instance of these changes, a simplified representation of what the complete logic represents.

In future posts I will talk about how to use [GIT](/tags/#git) tool efficiently and to your advantage, exemplifying when, where and how to commit.

* **Imprudence**

You already know that it is important, you have the expertise of the tool, and yet you decide to do it wrong. ~~shame on you~~


# Why write an excellent commit message?

But if you're still not convinced why you should write such an excellent commit message, let's recreate a common scenario in the developers careers.

You receive a medium priority demand from your PO with the "correct error in the user registration" task. Determined to solve the problem efficiently, you browse the repository to find the bug in the scope of the registration. To your surprise, the methods have no documentation, no tests, and you understand absolutely nothing about the diff of the modified files. The `git blame` points out that the last commit was made 1 month ago at 01:37 am on a Friday with the message "small changes". After taking a deep breath for having your inner peace briefly shaken, you check the `git log` to understand the previous commits, and are faced with quite _explicative_ messages such as "fixing a bug", "adding method", "making changes to the method", "improving fixes", and etc.

> A well thought commit message is the best way to communicate the context of a change, whether to other developers, or even to yourself in the future.

# But how do you become an craftsman of commit messages?

First of all, it is necessary to understand that excellent commit messages do not happen by chance. You will never come across an impeccable message history, where employees have not taken the necessary care with each of the commits. Excellence is the result of good practices applied daily.

And to guide our practices, there are conventions and standards (each team must agree on what best suits their reality).

## Conventional Commits

[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) -or semantic commits- is a commit message convention, to help maintain an explicit and well-structured commit history. By following this type of convention, we can automate the creation of [CHANGELOGs](https://keepachangelog.com/en/1.0.0/), facilitate the entry of new developers to the project, in addition to being able to understand where the hours of the project (in code refactoring, feature creation, or bug fixes).

For those who don't know it yet, this is the standard form for a semantic commit:

```
[type](optional scope): [subject]

[optional body]

[optional footer]
```

A practical example:

```
fix(containers/profile): adjust argument of  getThumbnailImage function

getThumbnailImage used to receive argument of type XPTO.
Now receives the correct argument of type FOO.


Solves issue #132
```

### Types of commits

The type of a commit is the initial description of what the commit is doing and there is a well-defined list:

* **test**: indicates any type of code creation or changing test codes. Example: Creation of unit tests.
* **feat**: indicates the development of a new feature to the project. Example: Adding a service, functionality, endpoint, etc.
* **refactor**: used when there is refactoring of code that does not have any impact on the logic or business rules of the system. Example: Code changes after a code review.
* **style**: used when there are changes in formatting and style of the code that do not alter the system in any way. Example: Change the style-guide, fix indentations, remove whitespace, remove comments, etc.
* **fix**: used when correcting errors that are generating bugs in the system. Example: Apply treatment to a function that is not behaving as expected and returning an error.
* **chore**: indicates design changes that do not affect the system or test files. Example: Changing environment variables in .env files, adding more file extensions to .gitignore.
* **docs**: used when there are changes to the project documentation. Example: adding information in the API documentation, changing the README, etc.
* **build**: used to indicate changes that affect the project's build process or external dependencies. Example: adding or removing dependencies from project requirements, etc.
* **perf**: indicates a change that improved the performance of the system. Example: changing ForEach for while, improving the query to the database, etc.
* **ci**: used for changes to CI configuration files. Example: Circle, Travis, BrowserStack, etc.
* **revert**: indicates the reversal of a previous commit.

### Commit scopes

The scope of the commit is an optional part, short and easy to understand. This is where we will indicate which part of the code has been modified, such as a microservice layer for example. In general, the use of the scope is very generic, for example, being able to associate the numbering of tasks if your team follows some agile method.

### Commit body

The body, will contain more accurate descriptions of what is contained in that commit, showing the reasons or consequences generated by this code.

### Commit footers

The footer is restricted to changes in status, such as resolutions of the status of issues or association of a task. Example: "resolves issue #312".

### Commit subject

The subject -or message- is mandatory, and therefore is the most important part of the standard, and must be sufficiently clear as to why the changes in the commit. Remember that the `diff` of the changes tells you what has changed, but only the message efficiently represents the `WHY` of the changes.

In Chris Beams's [article](https://chris.beams.io/posts/git-commit/) 7 rules are also defined for a good message:

1. [Separate subject from body with a blank line](https://chris.beams.io/posts/git-commit/#separate)
2. [Limit the subject line to 50 characters](https://chris.beams.io/posts/git-commit/#limit-50)
3. [Capitalize the subject line](https://chris.beams.io/posts/git-commit/#capitalize)
4. [Do not end the subject line with a period](https://chris.beams.io/posts/git-commit/#end)
5. [Use the imperative mood in the subject line](https://chris.beams.io/posts/git-commit/#imperative)
6. [Wrap the body at 72 characters](https://chris.beams.io/posts/git-commit/#wrap-72)
7. [Use the body to explain what and why vs. how](https://chris.beams.io/posts/git-commit/#why-not-how)

I am not going to delve into each rule, as most are already self-explanatory. But for some, rule 5, about writing the message in the imperative, generates a slight initial estrangement, because the change implemented was a "past action", but when writing messages using the imperative mode we are saying **what the commit does if applied**.

If you were to make a cherry-pick (copy a commit from one branch to another) or a revert for example, that commit will "perform a task" not "performed a task".

The golden rule is that the message must complete the sentence:

> If applied, this commit will `commit message here`

```bash
git commit -m "<commit message here>"
```

Finally, see the real example of a commit made to the core repository of [Bitcoin](https://github.com/bitcoin/bitcoin/commit/eb0b56b19017ab5c16c745e6da39c53126924ed6):

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

# Further reading

* [How to Write a Git Commit Message](https://chris.beams.io/posts/git-commit/)
* [On Commit Messages](https://who-t.blogspot.com/2009/12/on-commit-messages.html)
* [A Note About Git Commit Messages](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
* [Commit Guidelines](https://www.git-scm.com/book/en/v2/Distributed-Git-Contributing-to-a-Project#_commit_guidelines)
* [Keep Your Commits "Atomic"](https://www.freshconsulting.com/atomic-commits/)
* [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
* [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)