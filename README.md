# ohmyzsh-plugin

![main build](https://github.com/calmzhu/ohmyzsh-plugin-bookmark/actions/workflows/build.yml/badge.svg?branch=main)

## Description

Yet another ohmyzsh plugin to quick jump between cmdline directories.

And the design concern is very simple 

    Add path to bookmarks, return an ordered number.and use the numbers to switch between dirs finally.

There are also lots of powerfull [FS Jumping](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins-Overview#fs-jumping) plugins if this is too simple for your case.
But if you also prefer simple and intuitive solution. this plugin can also be a good alternative.


## Install
1. Ensure both sed are already installed in you cmdline PATH.
1. Ensure [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) already installed.
1. Install plugin to ohmyzsh customer plugin dir.
1. Add **bookmark** to the plugins array in your zshrc file.
    `plugins=(... bookmark)`

## Usage

```bash
$ l -a ~ #Add home dir to bookmark
$ l -a /some/dir/path # Add /some/dir/path to bookmark
$ l -a `pwd` #Add current dir to bookmark
$ l # show current dir list
$ c 2 # switch to the 2rd dir in bookmark
$ l -d 2 # delete the 2rd dir from bookmark

```

