-- =====================================================================================================================
-- Arquivo fundamental para minha configuração do Neovim
-- Autor: Valdigleis (valdigleis@gmail.com)
-- Data: 25/04/2025
-- =====================================================================================================================

-- Atalho para opções
local opt = vim.opt

-- Desativa a compatibilidade com o VI original
vim.o.compatible = false

-- Define a codificação usada
opt.encoding = "utf-8"
vim.scriptencoding = "utf-8"

-- Desabilita a criação de arquivos de backup
opt.backup = false

-- Ativa a exibição do número de linhas (modelo relativo) e colunas
opt.number = true
opt.relativenumber = true
opt.ruler = true

-- Define o número mínimo de linhas exibidas abaixo do cursor (quando possível)
opt.scrolloff = 10

-- Define o número de slots no histórico
opt.history = 15

-- Habilita uso da tecla backspace
opt.backspace = { "indent", "eol", "start" }

-- Ativa plugin e indentação baseada na extensão dos arquivos
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")

-- Ativa o sistema de highlight básico
vim.cmd("syntax on")

-- Destaca a linha onde está o cursor
opt.cursorline = true

-- Ativa que a modificação externa dos arquivos seja capturada e atualizada no vim
opt.autoread = true

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  pattern = "*",
  command = "silent! checktime",
})

-- Ativa as sugestões no menu de comandos
opt.wildmenu = true

-- Define a altura do menu de comandos
opt.cmdheight = 2

-- Ativa o suporte ao uso do mouse
opt.mouse = "a"

-- Ativa o highlight nos delimitadores
opt.showmatch = true

-- Define o tempo em que os delimitadores são destacados quando um deles está sob o cursor
opt.matchtime = 3

-- Adiciona os símbolos < e > no conjunto de delimitadores
opt.matchpairs:append("<:>")

-- Define o uso (número de uso) da tecla espaço para ser usado como mecanismo para o TAB
opt.expandtab = true
opt.tabstop = 2

-- Define o tamanho do recuo ao apertar > e < no modo visual
opt.shiftwidth = 2

-- Ativa o suporte para cores de terminal com 24 bits
opt.termguicolors = true

-- Desativa a exibição do modo ativo
opt.showmode = false

-- Desativa a necessidade de salvar para navegar entre os buffers
opt.hidden = true

-- Ativa para que o TAB seja usado para detectar os folds do código
opt.foldmethod = "indent"

-- Define que os folds do código sejam carregados todos abertos
opt.foldlevelstart = 99

-- Ativa a busca incremental
opt.incsearch = true

-- Desativa o case sensitive na busca
opt.smartcase = true

-- Ativa o highlight para busca
opt.hlsearch = true

-- Define tempo de espera para eventos no Neovim
opt.updatetime = 300

-- Exibe texto de assinatura em coluna
opt.signcolumn = "yes"

-- Neovim não criará mais arquivos temporários
opt.swapfile = false
opt.backup = false
opt.writebackup = false
