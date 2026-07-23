-- =====================================================================================================================
-- Arquivo usado pelo Vimplug para gerenciar os plugins que utilizo na minha configuração
-- Autor: Valdigleis (valdigleis@gmail.com)
-- Data: 25/04/2025
-- =====================================================================================================================

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
  -- Tema de cores
  --Plug('dracula/vim')
  Plug('rebelot/kanagawa.nvim')

  -- Adiciona o uso e apresentação dos devicons
  Plug('nvim-tree/nvim-web-devicons')

  -- Arco-íris de cores nos limitadores
  Plug('luochen1990/rainbow')

  -- Para a barra de indentação
  Plug('lukas-reineke/indent-blankline.nvim')

  -- File explore
  Plug('nvim-tree/nvim-tree.lua')

  -- Para integração com o Git
  Plug('tpope/vim-fugitive')
  Plug('vim-scripts/gitdiff.vim')
  Plug('APZelos/blamer.nvim')

  -- Barra de Status
  -- Plug('itchyny/lightline.vim')
  Plug('nvim-lualine/lualine.nvim')

  -- Camada de comunicação com os LSP
  Plug('neoclide/coc.nvim', { ['branch'] = 'release' })

  -- Camada de comunicação com o fzf
  Plug('junegunn/fzf', { ['do'] =  function() vim.fn['fzf#install']() end })
  Plug('junegunn/fzf.vim')
  Plug('antoinemadec/coc-fzf', { ['branch'] = 'release' })

  -- Disnibiliza visualização (preview) das cores
  Plug 'norcalli/nvim-colorizer.lua'

  -- Disponibiliza o uso de Emmet usando (C-y ,)
  Plug('mattn/emmet-vim')

  -- Comunicação com o servidor de desenvolvimento web live-server
  Plug('wolandark/vim-live-server')

  -- Para adicionar um servidor de suporte a preview do markdown
  Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && npx --yes yarn install' })

vim.call('plug#end')

vim.g.coc_global_extensions = {
  'coc-css',
  'coc-html',
  'coc-java',
  'coc-pyright',
  'coc-json',
  'coc-tsserver',
  'coc-phpls'
}
