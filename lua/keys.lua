-- =====================================================================================================================
-- Arquivo com minha configuração de atalhos básicos do Neovim
-- Autor: Valdigleis (valdigleis@gmail.com)
-- Data: 25/04/2025
-- =====================================================================================================================

local keymap = vim.keymap

-- ---------------------------------------------------------------------------------------------------------------------
-- Define a tecla líder
-- ---------------------------------------------------------------------------------------------------------------------
vim.g.mapleader = " "


-- ---------------------------------------------------------------------------------------------------------------------
-- Atalhos de interação com os buffers
-- ---------------------------------------------------------------------------------------------------------------------

-- Navegação entre buffers
keymap.set("n", "<TAB>", ":bnext<CR>", { silent = true })
keymap.set("n", "<S-Tab>", ":bprevious<CR>", { silent = true })

-- Fecha o buffer atual
keymap.set("n", "<leader>bd", ":bd<CR>", { silent = true })

-- Terminal horizontal na parte inferior
keymap.set("n", "<leader>tt", function()
                                vim.cmd("belowright terminal")
                                vim.cmd("startinsert")
                              end, { silent = true}
)

-- ---------------------------------------------------------------------------------------------------------------------
-- Navegação entre janelas
-- ---------------------------------------------------------------------------------------------------------------------

-- Move para: Cima, Baixo, Esquerda, Direita
keymap.set("n", "<C-Up>", "<C-w>k")
keymap.set("n", "<C-Down>", "<C-w>j")
keymap.set("n", "<C-Left>", "<C-w>h")
keymap.set("n", "<C-Right>", "<C-w>l")

-- ---------------------------------------------------------------------------------------------------------------------
-- Atalhos para o vim-fugitive
-- ---------------------------------------------------------------------------------------------------------------------

-- Diff lado a lado
keymap.set("n", "<leader>gs", ":Gdiffsplit<CR>", { silent = true })

-- Obtém alteração do diff
keymap.set("n", "<leader>gd", ":diffget<CR>", { silent = true })

-- Fecha diff
keymap.set("n", "<leader>gc", ":diffoff<CR>", { silent = true })

-- ---------------------------------------------------------------------------------------------------------------------
-- Atalhos para o CoC
-- ---------------------------------------------------------------------------------------------------------------------

-- Documentação lateral
--keymap.set("n", "gK", ":call CocAction('doHover', 'preview') <Bar> wincmd P <Bar> wincmd L<CR>", { silent = true })
keymap.set("n", "gK", ":call CocAction('doHover', 'preview') <Bar> wincmd P <Bar> setlocal nomodifiable readonly<Bar> wincmd L<CR>", { silent = true })

-- Navegação CoC
keymap.set("n", "g[", "<Plug>(coc-diagnostics-prev)", { silent = true, nowait = true })
keymap.set("n", "g]", "<Plug>(coc-diagnostics-next)", { silent = true, nowait = true })

keymap.set("n", "gd", "<Plug>(coc-definition)", { silent = true, nowait = true })
keymap.set("n", "gD", "<Plug>(coc-type-definition)", { silent = true, nowait = true })
keymap.set("n", "gi", "<Plug>(coc-implementation)", { silent = true, nowait = true })
keymap.set("n", "gr", "<Plug>(coc-references)", { silent = true, nowait = true })


-- Rename
keymap.set("n", "<leader>rn", "<Plug>(coc-rename)", { silent = true, nowait = true })
-- Quick fix
keymap.set("n", "<leader>qf", "<Plug>(coc-fix-current)", { silent = true })


-- ---------------------------------------------------------------------------------------------------------------------
-- Atalhos para o fzf
-- ---------------------------------------------------------------------------------------------------------------------

-- Buffers abertos
keymap.set("n", "<leader>fb", ":Buffers<CR>", { silent = true })

-- Arquivos no diretório atual
keymap.set("n", "<leader>fF", ":Files ./<CR>", { silent = true })

-- Arquivos do git
keymap.set("n", "<leader>ff", ":GFiles<CR>", { silent = true })

-- Arquivos + status do git
keymap.set("n", "<leader>fg", ":GFiles?<CR>", { silent = true })

-- Lista atalhos
keymap.set("n", "<leader>fk", ":Maps<CR>", { silent = true })

-- Busca com ripgrep
keymap.set("n", "<leader><leader>", ":Rg<CR>", { silent = true })

-- Lista de extensões CoC (gerenciamento)
keymap.set("n", "<leader>fE", ":<C-u>CocList extensions<CR>", { silent = true, nowait = true })

-- ---------------------------------------------------------------------------------------------------------------------
-- fzf + CoC
-- ---------------------------------------------------------------------------------------------------------------------

-- Diagnósticos do buffer atual
keymap.set("n", "<leader>fd", ":<C-u>CocFzfList diagnostics --current-buf<CR>", { silent = true })

-- Diagnósticos do projeto
keymap.set("n", "<leader>fD", ":<C-u>CocFzfList diagnostics<CR>", { silent = true })

-- Referências/símbolos
keymap.set("n", "<leader>fr", ":<C-u>CocList -I symbols<cr>", { silent = true, nowait = true })

-- ---------------------------------------------------------------------------------------------------------------------
-- Atalhos para o Live Server
-- ---------------------------------------------------------------------------------------------------------------------

-- Inicia live-server
keymap.set("n", ";s", ":StartBrowserSync<CR>", { silent = true })

-- Finaliza live-server
keymap.set("n", ";k", ":KillBrowserSync<CR>", { silent = true })

-- ---------------------------------------------------------------------------------------------------------------------
-- Atalhos para o markdown-preview.nvim
-- ---------------------------------------------------------------------------------------------------------------------

keymap.set("n", "<leader>tm", ":MarkdownPreviewToggle<CR>", { silent = true })

-- ---------------------------------------------------------------------------------------------------------------------
-- Atalhos para o nvim-tree 
-- ---------------------------------------------------------------------------------------------------------------------
keymap.set("n", "<leader>tf", ":NvimTreeToggle<CR>", { silent = true })
