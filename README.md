# Petr's nvim config

## Setup

Soft link the configs from this repository to the actual config files:
```
ln -s ~/.config/nvim nvim
```

Packages managed by the OS package manager:
```
brew install \
    neovim \
    gnu-sed \
    lazygit \
    pyenv \
    vifm \
    yarn \
    node
```

Python Setup:
```
pyenv install {some recent version}
pyenv global {same recent version}
# Add pyenv to PATH and source
pip install --upgrade pip
pip install neovim
```

Neovim Setup:
```
:LspInstall ruff_lsp pyright pylsp lua_ls
:Copilot setup
:TSInstall vimdoc lua python
```

## Instructions

 - [Refactoring](./docs/refactoring.md)
