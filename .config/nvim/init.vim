let g:jukit_mappings_ext_enabled = ['py', 'ipynb']
let g:python3_host_prog = '/usr/bin/python3'
let g:gruvbox_baby_transparent_mode = 1

nnoremap <Space>nv :edit ~/.config/nvim/<CR>
nnoremap <Space>nt :Neotree % right<CR>
nnoremap <Space>undo :UndotreeToggle<CR>
nnoremap <Space>mvn :Mvn clean javafx:run<CR>

set number
syntax enable
set tabstop=4
set shiftwidth=4

set autochdir

let g:mapleader = " "

command! E Explore


filetype plugin indent on
syntax enable
lua require('init')

set encoding=utf-8

let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_compuler_method = 'latexrun'
let g:vimtex_view_enabled = 1
