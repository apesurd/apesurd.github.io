---
title: Linux
excerpt: Some useful commands for Linux
---

## Finding file satisfying a pattern
```bash
find {dir} -type f -name <filepattern>
```

## Deleting files recursively 
```bash
find {dir} -type d -name "subdir_name" -exec echo rm -rf {} \;
```

## Writing text to a file from terminal

### Single line
```bash
echo "Content goes here" > filename
```

### Multi line
```bash
cat << EOF > filename
line1 
line2 
EOF
```

