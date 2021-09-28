" Created by https://github.com/Wierzba13
" 
" Command to install vim Plug (be in vim directory)
" iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni $HOME/vimfiles/autoload/plug.vim -Force
" this directory should be in C:\Users\<USER>\AppData\Local\nvim

:set encoding=UTF-8
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set termguicolors
:set guifont=Source\ Code\ Pro\ for\ Powerline:h15:cANSI


call plug#begin('C:\Users\ReVoo\AppData\Local\nvim\autoload\plugged')

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.vim', {'branch': 'relase'}
Plug 'https://github.com/mattn/emmet-vim'
Plug 'https://github.com/Raimondi/delimitMate'
Plug 'grvcoelho/vim-javascript-snippets'

Plug 'https://github.com/joshdick/onedark.vim' " One dark color scheme
Plug 'ghifarit53/tokyonight-vim' " tokyonight color scheme
Plug 'bluz71/vim-moonfly-colors' " moonfly color scheme
Plug 'bluz71/vim-nightfly-guicolors' " nightfly color scheme
Plug 'srcery-colors/srcery-vim' " srcery color scheme

call plug#end()


"colorscheme srcery
"colorscheme onedark
"colorscheme nightfly
colorscheme moonfly
"colorscheme tokyonight

"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 1

syntax on
"let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
nmap <F8> :TagbarToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>


" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

