# Petr's nvim config

## Setup

Soft link the configs from this repository to the actual config files:
```
ln -s ~/personal/repositories/nvim/ ~/.config/nvim/
ln -s ~/personal/repositories/nvim/lazygit/config.yml ~/Library/Application\ Support/lazygit/config.yml
ln -s ~/personal/repositories/nvim/git/.gitignore ~/.gitignore
ln -s ~/personal/repositories/nvim/vifmrc ~/.vifm/vifmrc
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

~/.pyenv/shims/pip install --upgrade pip
~/.pyenv/shims/pip install neovim

~/.pyenv/shims/pip install pynvim
~/.pyenv/shims/pip install ropevim
```

Neovim Setup:
```
:LspInstall ruff_lsp pyright pylsp lua_ls
:Copilot setup
:TSInstall vimdoc lua python
```

Secrets Setup:
```
echo "YOUR_OPENAI_API_KEY" > ~/.config/openai.token  # For vim-ai
```

## Instructions

 - [Refactoring](./docs/refactoring.md)
