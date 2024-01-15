# Petr's nvim config

## Setup

Soft link the configs from this repository to the actual config files:
```
ln -s ~/.config/nvim nvim
ln -s ~/personal/repositories/nvim/lazygit/config.yml ~/Library/Application\ Support/lazygit/config.yml
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
    node /
    git-delta
```

Python Setup:
```
pyenv install {some recent version}
pyenv global {same recent version}
# Add pyenv to PATH and source
pip install --upgrade pip
pip install neovim

pip install pynvim
pip install ropevim
```

Neovim Setup:
```
:LspInstall ruff_lsp pyright pylsp lua_ls
:Copilot setup
:TSInstall vimdoc lua python
```

## Instructions

 - [Refactoring](./docs/refactoring.md)
