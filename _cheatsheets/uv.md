---
title: UV
excerpt: UV is an extremely fast Python package and project maanger written in Rust, designed as a drop in replacement for pip, pip-tools, pipx, poetry, pyenv, virtualenv, and more.
---

## Installation
Refer to the installation instructions on the [uv](https://docs.astral.sh/uv/getting-started/installation/) repository

I have installed it using curl in macOS:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh

# using Homebrew
brew install uv
```

## Project Management

### Initialize a New Project

```bash
# create new project
uv init my-project
cd my-project

# Initialize existing directory 
uv init

# initialize with specific python version 
uv init --python 3.11

```

### Run Scripts and Commands 
```bash
# run a python script 
uv run script.py

# run a script with inline dependencies 
uv run --with requests --with pandas script.py

# run a module 
uv run -m pytest

# run with specific python version 
uv run --python 3.11 script.py
```

### Manage dependencies

```bash
# add a package to project
uv add package-name

# add specific verion 
uv add package-name==1.0.0

# add with extra
uv add "package-name[extra1,extra2]"

# add development dependencies
uv add --dev pytest

# add optional dependency-group
uv add --optional-group docs sphinx

# remove a package
uv remove package-name

# upgrade a package 
uv add --upgrade package-name

# upgrade all packages
uv lock --upgrade

```


### Sync and Lock 

```bash
# install all dependencies from pyproject.toml
uv sync

# sync without dev dependencies
uv sync --no-dev

# sync specific groups 
uv sync --group docs

# update lock file 
uv lock

# updat lock file an upgrade all packages
uv lock --upgrade

```

## Python Version Management

```bash
# list available python versions
uv python list 

# install a python version
uv python install=3.11

# install latest python
uv python install 

# pin python version for project
uv python pin 3.11

# show current python version 
uv python find

# uninstall a python version
uv python uninstall 3.11

```

## Virtual Environment Management

```bash 
# create a new virtual environment
uv venv

# create with specific python version 
uv venv --python 3.11

# create in specific directory
uv venv /path/to/venv

# create with specific name
uv venv .venv-test

# activate virtual environment
source .venv-test/bin/activate
```

## Working with Tools 

```bash

# run a tool without installing (uvx)
uvx ruff check .
uvx black .

# install a tool globally 
uv tool install ruff==0.1.0

# upgrade a tool
uv tool upgrade ruff 

# uninstall a tool
uv tool uninstall ruff

# list installed tools
uv tool list 

# run an installed tool 
uv tool run ruff check .
```

## pip interface (Legacy compatibility)

UV provides a pip-compatible interface for migration 

```bash
# install packages
uv pip install package-name

# install from requirements.txt
uv pip install -r requirements.txt

# uninstall packages
uv pip uninstall package-name

# list installed packages
uv pip list 

# show package info
uv pip show package-name

# freeze dependencies
uv pip freeze > requirements.txt

# compile requirements (like pip-tools)
uv pip compile requirements.in -o requirements.txt

# sync from requirements.txt
uv pip sync requirements.txt
```

## Building and publishing 

```bash
# build source and wheel distribution 
uv build 

# build only source distribution 
uv build --sdist

# build only wheel 
uv build --wheel

# publish to pypi
uv publish

# publish with token
uv publish --token <token>

# publish to TestPyPI
uv publish --index testpypi --token <token>
```

## cache management 

```bash
# show cache directory
uv cache dir

# clear cache
uv cache clear

# clear specific packages from cache 
uv cache clean package-name

# show cache size
uv cache info
```

## configuration

UV configuration files are located in `pyproject.toml` and `uv.lock` files


## Environment Variables

```bash
# custom cache directory
export UV_CACHE_DIR=/path/to/cache

# disable cache 
export UV_NO_CACHE=1

# set custom python 
export UV_PYTHON=/path/to/python

# set system python preference 
export UV_PYTHON_PREFERENCE=system

# disable progress indicator
export UV_NO_PROGRESS=1 

# set index URL 
export UV_INDEX_URL=https://custom.index.url/simple/
```

## Common workflows 

### Starting a new project 

```bash
# create project structure
uv init my-project 
cd my-project 

# add dependencies 
uv add requests pandas 

# add dev dependencies 
uv add --dev pytest ruff 

# run script 
uv run main.py
```

### migrating from other tools 

```bash
# from requirements.txt
uv add -r requirements.txt

# from poetry (with poetry installed)
# export first: poetry export -f requirements.txt -o requirements.txt

# from pipenv 
# export first: pipenv requirements > requirements.txt

```

### working with existing projects 

```bash
# install dependencies (after cloning the project)
uv sync 

# run tests
uv run pytest 

# add new feature dependency 
uv add new-package 

# commit changes (include pyproject.toml and uv.lock)
```
