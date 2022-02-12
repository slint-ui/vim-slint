# `The .slint Markup Language` syntax highlight for Vim

This is basic implementation of `The .slint Markup Language` syntax
highlight for Vim.

# Install

## Use your favorite package manager, or install it manually.

### `vim-plug`

``` vim
Plug 'hunger/vim-slint'
```

### `packer.nvim`

``` lua
use 'hunger/vim-slint'
```

# LSP

You can also setup LSP using your favorite LSP client for vim or neovim

## Install LSP using `cargo`

``` sh
cargo install slint-lsp
```

## Setup LSP

### NeoVim (>=0.5) using built-in lsp

1.  install `neovim/nvim-lspconfig` using your fav package manager
2.  add to your lua config

``` lua
require'lspconfig'.slint_lsp.setup{}
```

or to your viml config

``` vim
lua << EOF
require'lspconfig'.slint_lsp.setup{}
EOF
```

###### TODO: Add instruction to install lsp w/o compiling

# Formatting code (WIP: not yet functional)

# Links

- [Slint’s GitHub Repo](https://github.com/slint-ui/slint)

# History

This plugin took the existing sixtyfps-vim plugin from RustemB
(https://github.com/RustemB/sixtyfps-vim) and trivially updated that
to slint.
