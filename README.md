XEP Builder
==============

A XEP building tool that allows you to break the XEP document down into smaller, more manageable sections. A grunt task will also attempt to rebuild the XEP on every file change and build the resulting html.

When linked up with travis (see below) the library can also publish XEPs to your github pages branch and test any pull requests that are made to the repository.

## Creating

Put your sections in the sections subdirectory. They will be added to the XEP in numerical order when build, e.g.

* 0-introduction.xml
* 1-security.xml
* 3-examples.xml

## Building the XEP

### Manually

```bash
make
open index.html
```

or

```
grunt build
```

### Automatically on file change

```
npm install -g grunt-cli
npm i .
grunt
```

A task will now monitor the file system and rebuild the XEP on changes.

## Deploy to `gh-pages` using Travis CI

* Create a Github token: http://docs.travis-ci.com/user/build-configuration/#Secure-environment-variables
* Copy `travis.yml.` to `.travis.yml`
* Copy in your encrypted token
* Tell travis/github to run tests against your XEP repo
* The XEP will be deployed to `gh-pages`

## Build status

[![Build Status](https://travis-ci.org/lloydwatkin/xep-builder)](https://travis-ci.org/lloydwatkin/xep-builder)

