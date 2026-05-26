-- =====================================================================================================================
-- Arquivo com a configuração dos plugins usados
-- Autor: Valdigleis (valdigleis@gmail.com)
-- Data: 25/04/2025
-- =====================================================================================================================

local opt = vim.opt
local g = vim.g
local api = vim.api
local fn = vim.fn

-- ---------------------------------------------------------------------------------------------------------------------
-- Tema de cores
-- ---------------------------------------------------------------------------------------------------------------------

vim.cmd.colorscheme("dracula")

-- ---------------------------------------------------------------------------------------------------------------------
-- Remover o fundo da Normal para permitir transparência
-- ---------------------------------------------------------------------------------------------------------------------

vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight LineNr guibg=NONE ctermbg=NONE
  highlight VertSplit guibg=NONE ctermbg=NONE
]])

-- ---------------------------------------------------------------------------------------------------------------------
-- Configuração para o Blamer
-- ---------------------------------------------------------------------------------------------------------------------

g.blamer_enable = 1
g.blamer_show_in_visual_modes = 0
g.blamer_show_in_insert_modes = 0
g.blamer_show_in_normal_modes = 1
g.blamer_delay = 500
g.blamer_prefix = '   '

api.nvim_create_augroup("BlamerAutoStart", { clear = true })

api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  group = "BlamerAutoStart",
  pattern = "*",
  command = "silent! BlamerShow"
})

-- ---------------------------------------------------------------------------------------------------------------------
-- Configuração para o lualine.nvim
-- ---------------------------------------------------------------------------------------------------------------------

require("lualine").setup({
  options = {
    theme = "dracula", -- Ou "catppuccin", "tokyonight", "gruvbox", "auto" (segue seu colorscheme)
    component_separators = { left = "|", right = "|" },
    -- section_separators = { left = "", right = "" }, -- Separadores modernos/texturizados
    section_separators = { left = "", right = "" },
    globalstatus = true, -- Mantém uma barra única na parte inferior, mesmo com divisões de tela
  },
  sections = {
    lualine_x = { "encoding", "fileformat", "filetype" },
  },
})


-- ---------------------------------------------------------------------------------------------------------------------
-- Configuração para o CoC
-- ---------------------------------------------------------------------------------------------------------------------

opt.backup = false
opt.writebackup = false
opt.updatetime = 300
opt.signcolumn = "yes"

local keyset = vim.keymap.set
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})

vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
})

-- Symbol renaming
keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})


-- Formatting selected code
keyset("x", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})
keyset("n", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})


-- Setup formatexpr specified filetype(s)
vim.api.nvim_create_autocmd("FileType", {
    group = "CocGroup",
    pattern = "typescript,json",
    command = "setl formatexpr=CocAction('formatSelected')",
    desc = "Setup formatexpr specified filetype(s)."
})

-- ---------------------------------------------------------------------------------------------------------------------
-- Configuração para o indent-blankline.nvim
-- ---------------------------------------------------------------------------------------------------------------------

local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

require("ibl").setup { indent = { highlight = highlight } }

-- ---------------------------------------------------------------------------------------------------------------------
-- Configuração para o nvim-tree
-- ---------------------------------------------------------------------------------------------------------------------

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
require("nvim-tree").setup()
---@type nvim_tree.config
local config = {
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    side = "right",
    width = 30,
  },
  renderer = {
    group_empty = true,
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
  filters = {
    dotfiles = true,
  },
}
require("nvim-tree").setup(config)




