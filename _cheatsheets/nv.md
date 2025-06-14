---
layout: single
title: uv
---

`uv` is a fast package and program manager for Python. It's a drop-in replacement for pip and virtualenv, written in Rust.

## Installation
Using Homebrew (on mac):
```bash
brew install uv
```

## Basic Commands

### Create a virtual environment
```bash
uv venv
```

### Activate the virtual environment
```bash
source .venv/bin/activate
```


### To install the latest Python version
```bash
uv python install
```

### Install a specific version of Python
```bash
uv python install 3.8
```

### Reinstall uv-managed Python versions
```bash
uv python install --reinstall
````

### List all installed Python versions
```bash
uv python list 
```

## Uninstallation

### Cleanup stored data
```bash
uv cache clean
rm -r "$(uv python dir)"
rm -r "$(uv tool dir)"
```

### Remove the uv and uvx binaries
```bash
rm ~/.local/bin/uv ~/.local/bin/uvx
```


## Scripts 

### Run a script 
```bash
uv run
```

### Add a dependency to a script 
```bash
uv add --script
```

### Remove a dependency from a script
```bash
uv remove --script
```

## Projects
### Add a dependency to a project
```bash
uv add
```

### Remove a dependency from a project
```bash
uv remove
```

### Sync the project's dependencies
```bash
uv sync
```

### Create a lockfile for the project's dependencies
```bash
uv lock
```

### Run a command in the project's environment
```bash
uv run
```

### View the dependency tree for the project
```bash
uv tree
```

### Build the project into distribution archives.
```bash
uv build
```

### Publish the project to a package index
```bash
uv publish
```

