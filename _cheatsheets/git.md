---
layout: single
title: Git
---

## Changing the commit message
```bash
git commit --amend "new commit message"
```

## Squash feature-branch changes to master
```bash
  1. git checkout master
  2. git merge --squash <feature-branch>
  3. git commit -m 'Commit message'
```

## Find commit-id by commit message
```bash
git log --grep="{YOUR_KEYWORD}" 
```

- Flag `-i` would perform case-insensitive lookups
- It is possible to specify multiple `--grep` option in a single command.
  - By default, it would lookup for the commits where atleast one of the keywords matches. 
  - to match all given grep patterns, include the option `--all-match` in the command. 

## Count number of commits
```bash
git rev-list --count HEAD
```

## Set "main" as the default branch when init a new repo
```bash
git config --global init.defaultBranch main
```
