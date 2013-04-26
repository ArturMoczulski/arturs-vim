" Pathogen - plugin management
execute pathogen#infect()
execute pathogen#helptags()

" General
syntax on " enable syntax highlighting
filetype plugin indent on
set encoding=utf-8

" Tabs and wrapping
set nowrap
set tabstop=4 shiftwidth=4
set expandtab

" Search
set ignorecase
set smartcase " make search case sensitive only if there is at least one capital letter

" NERDTree
autocmd vimenter * NERDTree

" Keys
map <C-n> :NERDTreeToggle<CR>
