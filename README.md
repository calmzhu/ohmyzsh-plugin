# ohmyzsh-plugin

![main build](https://github.com/calmzhu/ohmyzsh-plugin-bookmark/actions/workflows/build.yml/badge.svg?branch=main)

## Description

A ohmyzsh plugin to support bookmark for directories in cmdline.

## Usage
1. Ensure both sed & awk are already installed in you cmdline PATH.
2. Install plugin to ohmyzsh customer plugin dir
3. Add **bookmark** to the plugins array in your zshrc file
    `plugins=(... bookmark)`



### Usage

```bash
$ l -a ~ #Add home dir to bookmark
$ l -a /some/dir/path # Add /some/dir/path to bookmark
$ l -a `pwd` #Add current dir to bookmark
$ l # show current dir list
$ c 2 # switch to the 2rd dir in bookmark
$ l -d 2 # delete the 2rd dir from bookmark

```

