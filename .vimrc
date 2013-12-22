"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" .vimrc
"
" @author Artur Moczulski <artur.moczulski@gmail.com>
"
" @see http://stevelosh.com/blog/2010/09/coming-home-to-vim/
" @see http://amix.dk/vim/vimrc.html
" @see http://statico.github.io/vim.html
"
" Sections:
" * Plugins loading
" * General
" * VIM user interface
" * Colors and Fonts
" * Files and backups
" * Text, tab and indent related
" * Visual mode related
" * Moving around, tabs and buffers
" * Status line
" * Editing mappings
" * vimgrep searching and cope displaying
" * Spell checking
" * Misc
" * Helper functions
" * Todo
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins loading
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Plugin management
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage itself
Bundle 'gmarik/vundle'
filetype plugin indent on     " required!

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> System
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'mattn/webapi-vim'
" Bundle 'vim-scripts/Gist.vim'
" Bundle 'https://github.com/vim-scripts/taglist.vim'
Bundle 'mileszs/ack.vim'
" Bundle 'scrooloose/nerdcommenter'
" Bundle 'tpope/vim-surround'
" Bundle 'scrooloose/syntastic'
" Bundle 'Raimondi/delimitMate'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'sophacles/vim-bundle-sparkup'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
" Bundle 'git://git.wincent.com/command-t.git'
Bundle 'ervandew/supertab'
" Bundle 'https://github.com/wesleyche/SrcExpl.git'
" Bundle 'https://github.com/wesleyche/Trinity.git'
" Bundle 'git://github.com/tpope/vim-unimpaired.git'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> VCS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-fugitive'
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Syntaxes and such.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'tpope/vim-cucumber'
Bundle 'leshill/vim-json'
" Bundle 'tpope/vim-liquid'
" Bundle 'puppetlabs/puppet-syntax-vim'
" Bundle 'tpope/vim-haml'
" Bundle 'kchmck/vim-coffee-script'
Bundle 'plasticboy/vim-markdown'
Bundle 'groenewege/vim-less'
" Bundle 'othree/html5.vim'
" Bundle 'mutewinter/nginx.vim'
" Bundle 'msanders/cocoa.vim'
" Bundle 'empanda/vim-varnish'
Bundle 'itspriddle/vim-jquery'
Bundle 'atourino/jinja.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Debugging
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'joonty/vdebug.git' 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Ruby specific
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "vim-ruby/vim-ruby"
Bundle 'tpope/vim-endwise'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> PHP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'vim-scripts/PHPUnit-QF'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Database
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle "https://github.com/vim-scripts/dbext.vim.git"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Fun, but not useful
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/chance-of-storm'
" Bundle 'skammer/vim-css-color'
" Bundle 'ehamberg/vim-cute-python'
Bundle 'Lokaltog/powerline'
Bundle 'chriskempson/base16-vim'
Bundle 'chreekat/vim-paren-crosshairs'
Bundle 'https://github.com/dandorman/vim-colors.git'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off                  " required! how is this required?
set encoding=utf-8
set nocompatible              " Be iMproved
set noswapfile
set autoread

set clipboard=unnamed         " Share system clipboard.
set backspace=indent,eol,start " Make backspace behave normally.
set directory=/tmp//          " Swap files
set backupskip=/tmp/*,/private/tmp/*
set ffs=unix,dos,mac          " Default file types
set history=1000              " Remember more commands and search history
set undolevels=1000           " Use many muchos levels of undo

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set so=3                      " Set lines to the cursor when 
                              " moving lines
set showcmd                   " Show the command being typed
set number                    " Always show line numbers
set hidden                    " Allow un-saved buffers in 
                              " background
set nowrap                    " Don't wrap lines
set showmatch                 " Set show matching parenthesis
set title                     " Change the terminal's title
set visualbell                " Don't beep
set noerrorbells              " Don't beep
set t_vb=                     " Turn off visual bell
set gdefault                  " Default global search
set relativenumber            " Make lines numbers more useful
let g:NERDTreeWinPos = "right" " Put NERDTree on the side

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase                " Ignore case when searching
set smartcase                 " Ignore case if search pattern 
                              " is all lowercase, case-sensitive 
                              " otherwise
set hlsearch                  " Highlight search terms
set incsearch                 " Show search matches as you type

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> File saving behavior 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autowriteall              " Auto-save files when switching 
                              " buffers or leaving vim.
au FocusLost * silent! :wa
au TabLeave * silent! :wa

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Wildmenu completion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.luac                           " Lua byte code
set wildignore+=*.pyc                            " Python byte code
set wildignore+=**.class                         " Cursed Java class files

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable                 " Enable syntax highlighting
set guifont=Sauce\ Code\ Powerline:h14

try
    colorscheme codeschool
catch
endtry
set background=dark

if has("gui_running")
  set guioptions-=T

endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remove the toolbar if we're running under a GUI (e.g. MacVIM).
if has("gui_running")
  set guioptions=-t
endif

" Special characters for hilighting non-priting spaces/tabs/etc.
" set list listchars=tab:»\ ,trail:·

" Default Tabs & spaces
set tabstop=2     " a tab is four spaces
set shiftwidth=2  " number of spaces to use for autoindenting
set softtabstop=2
set expandtab
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting

" General Code Folding
""""""""""""""""""""""
set foldmethod=indent
set foldlevel=99

" Highlight VCS conflict markers
""""""""""""""""""""""""""""""""
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" I CAN HAZ NORMAL REGEXES?
"""""""""""""""""""""""""""
nnoremap / /\v
vnoremap / /\v


" General auto-commands
"""""""""""""""""""""""
autocmd FileType * setlocal colorcolumn=0
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" Get rid of trailing whitespace highlighting in mutt.
" autocmd FileType mail highlight clear ExtraWhitespace
autocmd FileType mail setlocal listchars=

" Reformat XML files
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

" Crontab auto-commands
"""""""""""""""""""""""
autocmd FileType crontab setlocal backupcopy=yes

" Toggle spellcheck in normal mode
" :map <F5> :setlocal spell! spelllang=en_us<CR>

" Ruby Configurations
"""""""""""""""""""""
autocmd filetype ruby setlocal expandtab shiftwidth=2 tabstop=2

" PHP Configurations
""""""""""""""""""""
autocmd FileType php setlocal colorcolumn=100

" HTML configurations
"""""""""""""""""""""
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4 noexpandtab

" Python configurations
"""""""""""""""""""""""
autocmd FileType python setlocal shiftwidth=4 expandtab tabstop=4 softtabstop=4
autocmd FileType python setlocal colorcolumn=80
autocmd FileType python map <buffer> <F4> :call Flake8()<CR>
autocmd FileType python autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Coffeescript configurations
"""""""""""""""""""""""""""""
au BufNewFile,BufReadPost *.coffee setlocal foldmethod=indent
au BufNewFile,BufReadPost *.coffee setlocal shiftwidth=2 expandtab

" Javascript configurations
"""""""""""""""""""""""""""
au BufNewFile,BufReadPost *.js setlocal shiftwidth=2 expandtab
let g:syntastic_javascript_checkers = ['jslint']

" Puppet configurations
"""""""""""""""""""""""
au FileType puppet setlocal noexpandtab

" Get jinja filetype selection working correctly for *.jinja.html files.
au BufNewFile,BufReadPost *.jinja.html setlocal filetype=htmljinja

" Make sure we hilight extra whitespace in the most annoying way possible.
" highlight ExtraWhitespace ctermbg=none guibg=none
" match ExtraWhitespace /\s\+$/
" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" autocmd InsertLeave * match ExtraWhitespace /\s\+$/

" XDebug syntax
au BufNewFile,BufRead *.xt  setf xt

" PHP Configuration
au BufNewFile,BufRead *.game set filetype=php
au BufNewFile,BufRead *.fig set filetype=php

" Custom mappings
""""""""""""""""""

" Genral
noremap <silent> <F4> :QFix<CR>


" Change leader
let mapleader = ","
let g:mapleader = ","

" Get rid of search hilighting with ,/
nnoremap <silent> <leader>/ :nohlsearch<CR>

" Fix those pesky situations where you edit & need sudo to save
cmap w!! w !sudo tee % >/dev/null


" Plugin configurations
"""""""""""""""""""""""

" Pyflakes
"autocmd BufWritePost *.py call Flake8()
let g:flake8_ignore="E128,E501"
let g:syntastic_python_checker_args='--ignore=E501,E128'

" Gist
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 2
let g:gist_show_privates = 1
let g:gist_post_private = 1

" TaskList
"map <leader>l <Plug>TaskList

" TagBar
nnoremap <silent> <F2> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_autoshowtag = 1
let g:tagbar_autofocus = 1

" crtl-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']

" SnipMate
let g:snippets_dir = "~/.vim/bundle/snipmate-snippets"

" Sparkup
let g:sparkupExecuteMapping = '<c-y>'
let g:sparkupNextMapping = '<c-k>'

" Jedi
let g:jedi#goto_command = "<leader>g"

" Double rainbow - What does it mean!?
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set laststatus=2
let g:syntastic_enable_signs = 1
let g:syntastic_auto_jump = 0
let g:syntastic_puppet_lint_disable = 0

" Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" Testing
let g:phpunit_args = "--configuration /var/www/html/unit-test/TalentCircles/phpunit.xml"

" Solarized layout {
  "if !has("gui_running")
      "colorscheme solarized
      "let g:solarized_termtrans=1
  "else
      "colorscheme solarized
      "let g:solarized_termtrans=1
  "endif
" }

" TalentCircles
"""""""""""""""""""""""""""""""""""""""""""""
cd ~/Projects/talentcircles/html

" DBExt
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:dbname=alumwire'

" Key mappings 
"""""""""""""""""""""""""""""""""""""""""""""

" I don't even fully understand these 2: 'It also makes j and k work the way you expect instead of working in some archaic “movement by file line instead of screen line” fashion.'
nnoremap j gj
nnoremap k gk

" Disable annoying help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Easy window navigation
noremap <A-h> <C-w>h
noremap <A-j> <C-w>j
noremap <A-k> <C-w>k
noremap <A-l> <C-w>l
"noremap <A-h> <C-w>h
"noremap <A-t> <C-w>j
"noremap <A-n> <C-w>k
"noremap <A-s> <C-w>l

" Copy & pasting
"   select pasted text
nnoremap <leader>v V`]

" Others
map <tab> <C-W>w
map <C-x> :q!<CR>
map - <C-w>-
map = <C-w>+
map <A-[> <C-w>>
map <A-]> <C-w><
map <F2> :NERDTreeToggle<CR>
map <F3> :Errors<CR>
map <F4> :TagbarToggle<CR>
map <F12> :so $MYVIMRC<CR>
map <F9> :vs ~/.vim/.vimrc<CR>
map <C-a> :w<CR>
map <Backspace> :noh<CR>

" Dvorak layout
"no <C-h> h
"no t j
"no n k
"no <C-s> l
"no <C-t> <C-d>
"no <C-n> <C-u>
"no s w
"no h b
"no ' u
"no e x
"no <C-e> <C-x>
"map u ciw

no z u

" Text manipulation
no ; $a;<Esc>
no a v
no <S-a> <S-v>

" Switch modes
inoremap hh <Esc>
no <Space> i
no <C-Space> a

no # n
no ! N
let NERDTreeMapOpenInTab='p'

noremap <Leader>t :VimTodoAddElement<CR>
noremap \ :NavigationModeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Quick add a suggestion for Vim configuration improvement
command! VimTodoAddElement call VimTodoAddElement()
function! VimTodoAddElement()
  let l:todo_entry = input("Add .vimrc Todo: ")
  execute "silent !echo '\" * '" . l:todo_entry . " >> $MYVIMRC"
  redraw!
endfunction

" Introducing read and write navigation mode:
" * read: hjkl - move one character / line at a time
" * write: hjkl - move by words and half pages
command! NavigationModeToggle call NavigationModeToggle()
function! NavigationModeToggle()
  if !exists('g:navigation_mode')
    let g:navigation_mode = "read"
  endif

  if g:navigation_mode == "read" 
    call NavigationModeWriteSet()
  else
    call NavigationModeReadSet()
  endif
endfunction

function! NavigationModeReadSet()
  let g:navigation_mode = "read"
  noremap h b
  noremap j 20gj
  noremap k 20gk 
  noremap l w 
  echo "Reading navigation mode."
endfunction

function! NavigationModeWriteSet()
  let g:navigation_mode = "write"
  noremap h b
  noremap j gj
  noremap k gk
  noremap l w
  noremap <C-h> h
  noremap <C-l> l
  echo "Writing navigation mode."
endfunction

call NavigationModeReadSet()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Todo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" * add a "Search and replace" keyboard mapping
" * get rid of all the startup error messages
" * figure out why F12 does not work on Mac OS X
