# Hello, humans 👋
I'm Valdigleis (Dk4LL), a [Peanuts](https://www.peanuts.com/) fan, former programmer, ex-user and ex-collaborator of the [Debian](https://www.debian.org/) project. Currently, I'm a computer science teacher at [CCICOMP](https://portais.univasf.edu.br/ccicomp) of the [Univasf](https://www.univasf.edu.br) - Brazil. This repository contains my personal config used in the [NeoVim](https://www.neovim.io/).

## Basic items on system 🌱
Install on your system...

- The [NeoVim](https://www.neovim.io/) editor, obviously!
- A [Nerd font](https://www.nerdfonts.com/), particularly recommend the font: [FiraMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraMono.zip).

## Languages 💬
This configuration provides support for the following listed languages:

- **Bash** using the [bash-language-server](https://github.com/bash-lsp/bash-language-server), tested with the version **5.4.2**.
- **C** and **C++** using the language server [clangd](https://clangd.llvm.org/), tested with the version **14.0.0**.
- **CSS** using the [vscode-css-language-server](https://github.com/hrsh7th/vscode-langservers-extracted), tested with the version **4.10.0**.
- **Javascript** and **Typescript** using the [TypeScript Language Server](https://github.com/typescript-language-server/typescript-language-server), tested with the version **4.3.3**.
- **LaTeX** using the [texlab](https://github.com/latex-lsp/texlab), tested with the version **4.3.2**.
- **Lua** using the [lua language server](https://luals.github.io/), tested with the version **3.10.5**.
- **Python** using the [pyright](https://github.com/microsoft/pyright), tested with the version **1.1.391**.
- **Prolog**, specifically [swi-prolog](https://www.swi-prolog.org/) using the [Prolog Language server](https://github.com/jamesnvc/lsp_server), tested with the version **2.2.7**.

## Dependencies (Softwares) 📦
For this configuration to work correctly, in addition to the language servers mentioned in the previous section, you must have the following software in your system's PATH.

- A line-oriented search tool that recursively searches, called [ripgrep](https://github.com/BurntSushi/ripgrep), tested with the version **13.0.0**.
- The reader files sequentially, writing them to standard output, called [bat](https://github.com/sharkdp/bat), tested with the version **0.19.0**.
- The parser generator tool called [tree-sitter](https://tree-sitter.github.io/tree-sitter/), tested with the version **0.24.5**.
- A compiler C/C++ for compile files for the tree-sitter, options are: [clang](https://clang.llvm.org/) or [gcc](https://gcc.gnu.org/).

