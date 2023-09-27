---
layout: base
title: Squashing Commits
---

## Squishing comments
### while merging a feature branch to the master

```
  1. git checkout master
  2. git merge --squash <feature-branch>
  3. git commit -m 'Commit message'
```
