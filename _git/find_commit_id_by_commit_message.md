---
layout: base
title: Find commit-id by commit message
---

## Find commit-id by grepping commit message 

```bash
git log --grep="{YOUR_KEYWORD}" 
```

- Flag `-i` would perform case-insensitive lookups
- It is possible to specify multiple `--grep` option in a single command.
  - By default, it would lookup for the commits where atleast one of the keywords matches. 
  - to match all given grep patterns, include the option `--all-match` in the command. 
