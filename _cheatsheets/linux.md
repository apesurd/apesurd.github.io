---
layout: single
title: Linux
---

## Finding file satisfying a pattern
```bash
find {dir} -type f -name <filepattern>
```

## Deleting files recursively from all the subdirectories
```bash
find {dir} -type d -name "subdir_name" -exec echo rm -rf {} \;
```

