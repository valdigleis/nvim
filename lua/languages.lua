-- =====================================================================================================================
-- Arquivo com configurações extras para determinadas linguagens
-- Autor: Valdigleis (valdigleis@gmail.com)
-- Data: 25/04/2025
-- =====================================================================================================================

local g = vim.g
local api = vim.api

-- ---------------------------------------------------------------------------------------------------------------------
-- OCaml
-- ---------------------------------------------------------------------------------------------------------------------

-- vim.opt.rtp:prepend("/Users/valdigleis/.opam/default/share/ocp-indent/vim")

-- ---------------------------------------------------------------------------------------------------------------------
-- TeX
-- ---------------------------------------------------------------------------------------------------------------------
g.tex_flavor = "tex"

-- ---------------------------------------------------------------------------------------------------------------------
-- HTML/CSS + Emmet
-- ---------------------------------------------------------------------------------------------------------------------
g.user_emmet_install_global = 0

api.nvim_create_autocmd("FileType", {
  pattern = { "html", "css" },
  command = "EmmetInstall"
})

-- ---------------------------------------------------------------------------------------------------------------------
-- JSON
-- ---------------------------------------------------------------------------------------------------------------------

local json_quotes_group = api.nvim_create_augroup("JsonQuotes", {
  clear = true
})

api.nvim_create_autocmd("FileType", {
  group = json_quotes_group,
  pattern = "json",
  command = "setlocal conceallevel=0"
})

api.nvim_create_autocmd("FileType", {
  group = json_quotes_group,
  pattern = "json",
  command = [[syntax match DoubleQuote /"/]]
})

api.nvim_create_autocmd("FileType", {
  group = json_quotes_group,
  pattern = "json",
  command = [[syntax match SingleQuote /'/]]
})

api.nvim_create_autocmd("FileType", {
  group = json_quotes_group,
  pattern = "json",
  command = "highlight DoubleQuote ctermfg=Green guifg=Green"
})

api.nvim_create_autocmd("FileType", {
  group = json_quotes_group,
  pattern = "json",
  command = "highlight SingleQuote ctermfg=Yellow guifg=Yellow"
})
