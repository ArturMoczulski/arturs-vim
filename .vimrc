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
" * Colors, fonts, encoding
" * Files and backups
" * Text, tab and indent related
" * Moving around, tabs and buffers
" * Status line
" * Editing mappings
" * Misc mappings
" * vimgrep searching and cope displaying
" * Spell checking
" * VCS
" * Filetype specific
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
" WebApi library for Vim
Bundle 'mattn/webapi-vim'
" Users ctags to provide source exploration
Bundle 'https://github.com/vim-scripts/taglist.vim'
" Easy source code commenting
Bundle 'scrooloose/nerdcommenter'
" Bundle 'tpope/vim-surround'
" Syntax checker with error checking
Bundle 'scrooloose/syntastic'
" Bundle 'Raimondi/delimitMate'
" Colorize matching parentheses
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'sophacles/vim-bundle-sparkup'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
" Bundle 'https://git.wincent.com/command-t.git'
Bundle 'ervandew/supertab'
" Bundle 'https://github.com/wesleyche/SrcExpl.git'
" Bundle 'https://github.com/wesleyche/Trinity.git'
" Bundle 'https://github.com/tpope/vim-unimpaired.git'

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
Bundle 'https://github.com/rstacruz/sparkup.git'
Bundle 'https://github.com/tpope/vim-rails.git'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Code generation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Debugging
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'joonty/vdebug.git'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Ruby specific
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "vim-ruby/vim-ruby"
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-cucumber'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> PHP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'vim-scripts/PHPUnit-QF'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Database
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "https://github.com/vim-scripts/dbext.vim.git"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Fun, but not useful
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'skammer/vim-css-color'
" Bundle 'ehamberg/vim-cute-python'
Bundle 'Lokaltog/powerline'
" Show crosshair when cursor is on a parentheses
Bundle 'chreekat/vim-paren-crosshairs'
Bundle 'https://github.com/dandorman/vim-colors.git'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off                  " required! how is this required?
set nocompatible              " Be iMproved
set autoread

set clipboard=unnamed         " Share system clipboard.
set ffs=unix,dos,mac          " Default file types
set history=1000              " Remember more commands and
                              " search history

" Fix those pesky situations where you edit & need sudo to save
cmap w!! w !sudo tee % >/dev/null


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set undolevels=1000           " Use many muchos levels of undo
set so=3                      " Set lines to the cursor when
                              " moving lines
set showcmd                   " Show the command being typed
set number                    " Always show line numbers
set hidden                    " Allow un-saved buffers in
                              " background
set showmatch                 " Set show matching parenthesis
set title                     " Change the terminal's title
set visualbell                " Don't beep
set noerrorbells              " Don't beep
set t_vb=                     " Turn off visual bell
set gdefault                  " Default global search
set relativenumber            " Make lines numbers more useful
autocmd BufReadPost * set relativenumber
let g:NERDTreeWinPos = "right" " Put NERDTree on the side
set backspace=indent,eol,start " Make backspace behave normally.
set colorcolumn=100
set nospell
set laststatus=2              " Always show status line

" Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" Change leader
let mapleader = ","
let g:mapleader = ","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Keymappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F2> :NERDTreeToggle<CR>
map <F3> :Errors<CR>
map <F7> :Gstatus<CR>
"map <F4> :TagbarToggle<CR>
" Handy save
map <C-a> :w<CR>

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
" => Colors, fonts, encoding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable                 " Enable syntax highlighting
" set guifont=Sauce\ Code\ Powerline

if has("gui_running")
  set guioptions=
  set t_Co=256
endif

try
    colorscheme Tomorrow-Night
catch
endtry

" Highlight VCS conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Enable matching parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==> Encoding and lines endings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8            " Use utf8 encoding and en_US
set ffs=unix,dos,mac          " Auto-detect line endings, with
                              " UNIX line ending preference

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup                  " Don't use backup files
set nowb                      " Even when overwriting a file
set noswapfile                " Don't use swapfiles for buffers

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                 " Expand tabs to spaces
set smarttab                  " Insert tabs on the start of
                              " a line according to
                              " shiftwidth, not tabstop
set tabstop=2                 " Tab width in spaces
set shiftwidth=2              " Number of spaces to use for
                              " autoindenting
set softtabstop=2
set shiftround                " Use multiple of shiftwidth
                              " when indenting with '<' and '>'
set autoindent                " Preserve indentation from the
                              " last line
set copyindent                " Copy the previous indentation
                              " on autoindenting using the exact
                              " same characters
set lbr                       " Visually break lines on 500 chars
set tw=500
set nowrap                      " Don't wrap lines at the edge of the
                              " screen
                              "
" Make sure we highlight extra whitespace in the most annoying way
" possible.
highlight ExtraWhitespace ctermbg=Yellow guibg=Yellow
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
nnoremap / /\v
vnoremap / /\v
vnoremap <silent> * :call VisualSelection('f','')<CR>
vnoremap <silent> # :call VisualSelection('b','')<CR>
map <Backspace> :noh<CR>

" Easy pane navigation
noremap <A-h> <C-w>h
noremap <A-j> <C-w>j
noremap <A-k> <C-w>k
noremap <A-l> <C-w>l
" Open / close
map <tab> <C-W>w
map <C-x> :q!<CR>
" Resizing
map - <C-w>-
map = <C-w>+
map <A-[> <C-w>>
map <A-]> <C-w><

" Text navigation mode
noremap m :NavigationModeToggle<CR>
noremap \ :NavigationModeToggle<CR>

" @see functions NavigationModeReadSet and
" NavigationModeWriteSet for navigation keys setup

set viminfo^=%                " Remember open buffers on close
" Return to last edit position when opening files (You want this!)
" @author https://github.com/amix/vimrc
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use 0 to jump to the beginning of the line
map 0 ^

" Select keymaping more convenient
no a v
" Select full line
no <S-a> <S-v>

" Insert ";" at the of the line
no ; $a;<Esc>

" Switch modes
inoremap hh <Esc>
no <Space> i
no <C-Space> a

" Disable annoying help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Code generation
imap <C-tab> <Plug>snipMateNextOrTrigger
smap <C-tab> <Plug>snipMateNextOrTrigger


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add a todo item to your Vim configuration
noremap <Leader>t :VimTodoAddElement<CR>

" Editing Vim configuration
map <F9> :vs ~/.vim/.vimrc<CR>
map <F12> :so $MYVIMRC<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimgrep (handy version)
map <leader>g :vimgrep // **/*.*<left><left><left><left><left><left><left><left>
" Vimgrep for selection in all files
vnoremap <silent> gv :call VisualSelection('gv','')<CR><CR>

" Search and replace selection
vnoremap <silent> <leader>r :call VisualSelection('replace','')<CR>

" Open up cope window (showing your vimgrep results)
map <leader>gl :botright cope<cr>

" Traverse search results
map <leader>n :cn<cr>
map <leader>p :cp<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle spell-checking
map <leader>ss :setlocal spell!<cr>
" Traverse spell-checking errors
map <leader>sn ]s
map <leader>sp [s

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VCS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" TaskList
"map <leader>l <Plug>TaskList

" TagBar
"nnoremap <silent> <F2> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_autoshowtag = 1
let g:tagbar_autofocus = 1

" crtl-p
let g:ctrlp_map = '<F4>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']
let g:ctrlp_regexp = 1
map <F4> :CtrlPMixed<CR>

" SnipMate
let g:snippets_dir = "~/.vim/bundle/vim-snippets"
let g:snips_author = "Artur Moczulski"

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

let g:syntastic_enable_signs = 1
let g:syntastic_auto_jump = 0
let g:syntastic_puppet_lint_disable = 0

" DBExt
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:dbname=alumwire'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Filetype specific
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4 noexpandtab
" Javascript
let g:syntastic_javascript_checkers = ['jslint']
" Get jinja filetype selection working correctly for *.jinja.html files.
au BufNewFile,BufReadPost *.jinja.html setlocal filetype=htmljinja

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
  noremap j <C-d> 
  noremap k <C-u>
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

call NavigationModeWriteSet()

" @author https://github.com/amix/vimrc
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction 

" @author https://github.com/amix/vimrc
function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.*' . a:extra_filter)
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TalentCircles
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vdebug
"let g:vdebug_options['path_maps'] = {"/var/www/html": "/mnt/vm/html"}
"let g:vdebug_options['server'] = "192.168.1.116"
" PHPUnit
let g:phpunit_args = "--configuration unit-test/TalentCircles/phpunit.xml"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Todo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" * figure out how to use taglist plugin
