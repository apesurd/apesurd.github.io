---
layout: base
title: linux cheatsheet
---

## Deleting files recursively from all the subdirectories
```bash
find {dir} -type d -name "subdir_name" -exec echo rm -rf {} \;
```
