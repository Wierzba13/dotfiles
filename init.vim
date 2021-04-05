:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set guifont=Source\ Code\ Pro\ for\ Powerline:h15:cANSI

call plug#begin()

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status barclear
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/joshdick/onedark.vim' " One dark color scheme
Plug 'https://github.com/neoclide/coc.vim', {'branch': 'relase'}
Plug 'https://github.com/mattn/emmet-vim'
Plug 'https://github.com/Raimondi/delimitMate'
Plug 'grvcoelho/vim-javascript-snippets'

call plug#end()


set encoding=UTF-8

syntax on
colorscheme onedark
let g:onedark_termcolors=256
let g:airline_theme='onedark'

nmap <F8> :TagbarToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"


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