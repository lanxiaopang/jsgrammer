# [Continuous Integration][1] [![Build Status][2]][3]

_This repository is part of the **JavaScript Application Design: A Build First Approach** book's code samples_, the full original for the code samples [can be found here][4]. You can [learn more about the book itself here][5].

This tutorial is part of the code samples accompanying the book [in _Chapter 4_][6], about the release flow, deployments, and hosted application monitoring.

### Introduction

Setting up CI is _almost trivial_ in this day and age. In this repository we'll learn how to get ourselves up and running with Travis-CI. The first thing we'll need to do, is create a `.travis.yml` file at the project root. In this example, the file looks like:

```yml
language: node_js

node_js:
  - "0.10"

before_install:
  - npm install -g grunt-cli

script:
  - grunt ci --verbose --stack
```

There is even a linter for `.travis.yml` files, which you can use on [lint.travis-ci.org][7], to verify the integrity of this file. The format is pretty self-descriptive, and we've covered the basics on the book.

All there's left, then, is to set up a `ci` task for Grunt. The task just runs `jshint` for this example, which isn't very useful because it will run the same in our development environments. We should configure the `ci` task to run unit, and integration tests as we'll examine in future chapters.

### Configuring It

You'll probably want to try this example out yourself. First thing you'll need is a `git` repository that's configured to run on Travis. That's easy, you could just fork this one by following a series of simple steps.

- Visit the [repository fork page][8]

Just click on the damn link already!

- Click on your username if need be.

![fork.png][9]

Awesome! Now all we need to do is visit [travis-ci][10], and click on **Sign in with GitHub**. If you don't have an account yet, you'll be prompted to create one, do that. It's free. Once you've signed in, [visit your profile page][11], and click on **Sync Now**, so Travis gets all your GitHub repository information he needs. You'll get a list of public repositories you own.

![repos.png][12]

Turn `username/ci-by-example` on, wait for it, and then click on the little settings icon. Then simply follow the install notes. If Travis didn't fill them in for you, you'll need to enter your credentials: the username and API token, [which can be found here][13].

Once that's done, clicking on **Test Hook** should trigger a build. A [Build Status badge][14] could now be yours!

```markdown
[![Build Status](https://travis-ci.org/{user}/{repo}.png?branch=master)](https://travis-ci.org/{user}/{repo})
```

And voilá!

![badge.png][15]

For more information you can visit [the guide provided by Travis-CI][16].

  [1]: https://github.com/buildfirst/ci-by-example
  [2]: https://travis-ci.org/buildfirst/ci-by-example.png?branch=master
  [3]: https://travis-ci.org/buildfirst/ci-by-example
  [4]: https://github.com/bevacqua/buildfirst
  [5]: http://bevacqua.io/buildfirst "JavaScript Application Design: A Build First Approach"
  [6]: https://github.com/bevacqua/buildfirst/tree/master/ch04
  [7]: http://lint.travis-ci.org/
  [8]: https://github.com/buildfirst/ci-by-example/fork
  [9]: http://i.imgur.com/6H2aNBe.png "I clicked on @bevacqua"
  [10]: https://travis-ci.org/
  [11]: https://travis-ci.org/profile
  [12]: http://i.imgur.com/TrpD3Wu.png "Turn ci-by-example on!"
  [13]: https://travis-ci.org/profile/me/profile
  [14]: http://about.travis-ci.org/docs/user/status-images/
  [15]: http://i.imgur.com/rXPjs12.png "A Build Status badge in action"
  [16]: http://about.travis-ci.org/docs/user/languages/javascript-with-nodejs/
