" Pathogen - plugin management
execute pathogen#infect()
execute pathogen#helptags()

" General
syntax on " enable syntax highlighting
filetype plugin indent on
set encoding=utf-8
set number

" Tabs and wrapping
set nowrap
set tabstop=2 shiftwidth=2
set expandtab

" Search
set ignorecase
set smartcase " make search case sensitive only if there is at least one capital letter

" NERDTree
autocmd vimenter * NERDTree

" Keys
map <C-n> :NERDTreeToggle<CR>
map <C-s> :w!<CR>
map <tab> <C-w>w
map - <C-w>-
map = <C-w>+

" Syntax checker
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_highlighting=1
let g:syntastic_mode_map = { 'mode': 'active',
   \ 'active_filetypes': [],
   \ 'passive_filetypes': [] }

" NERDTree
let NERDTreeShowHidden=1

" RubyRunner
let g:RubyRunner_window_size = 15

" Keys
:map <C-p> :w!<CR>:!/usr/bin/php %<CR>
:map <C-F11> :w!<CR>:!/usr/bin/php /srv/http/mamproblem/index.php<CR>
:map <C-F12> :w!<CR>:!curl -L mamproblem.local/users/index<CR>
:map <C-t> :w!<CR>:!/usr/bin/phpunit --bootstrap=tests/bootstrap.php "\Tests\Models\UserTest" tests/classes/Models/UserTest.class.php<CR>
