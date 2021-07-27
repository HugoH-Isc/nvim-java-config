set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'

Plug 'mfussenegger/nvim-jdtls'
Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-lsputils'
Plug 'hrsh7th/nvim-compe'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let mapleader=" "

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

nnoremap <Leader>ff <cmd>Telescope find_files<CR>
nnoremap <Leader>fg <cmd>Telescope live_grep<CR>
nnoremap <Leader>fb <cmd>Telescope buffers<CR>
nnoremap <Leader>fh <cmd>Telescope help_tags<CR>

if has('nvim-0.5')
  augroup lsp
    au!
    au FileType java lua require'jdtls_config'.setup()
  augroup end
endif
lua require'completion_config'
