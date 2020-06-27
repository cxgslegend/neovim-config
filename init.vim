"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              ______           _          __                    ____           "
"             / ____/________ _(_)___ _   / /   ____ _   _____  / / /           "
"            / /   / ___/ __ `/ / __ `/  / /   / __ \ | / / _ \/ / /            "
"           / /___/ /  / /_/ / / /_/ /  / /___/ /_/ / |/ /  __/ / /             "
"           \____/_/   \__,_/_/\__, /  /_____/\____/|___/\___/_/_/              "
"                             /____/                                            "
"                                                                               "
" Sections:                           --------------------------------------    "
"    -> * [0]  General Settings  *    | These following keys are safe to   |    "
"    -> * [1]  Plugin Management *    | modify becuase they are pointless. |    "
"    -> * [2]  Autocommands      *    |                                    |    "
"    -> * [3]  Plug-in Settings  *    | <space>, <cr>, <bs>, and -         |    "
"    -> * [4]  Mappings          *    --------------------------------------    "
"    -> * [5]  Custom Functions  *                                              "
"                                                                               "
"                                                                               "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = "\<Space>"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                                General Settings                               "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable                                             " Enable folding
set foldcolumn=3                                           " Gutter wider by 3 columns
set foldmethod=marker                                      " Make vim markers the defualt folding pattern (we overide this in ft fold files).
set foldlevelstart=3                                       " Open most folds by default
set belloff=all                                            " Turn all annoying bell sounds off
set showcmd                                                " Show key strokes as they are typed.
set relativenumber                                         " Make line numbers relative to the current line
set number                                                 " Turn hybrid relative numbers on (makes current line show real line number)
set cursorline                                             " Highlight current line
set winminwidth=10                                         " Set minimum number of columns to be filled for all splits
set winwidth=85                                            " Sets the minimum number of columns to be filled in the current split
set winheight=5                                            " You cannot make winheight smaller than winminheight. Therefore we set it first to avoid errors.
set winminheight=5                                         " Sets all splits to have a min height of 5
set winheight=999                                          " Sets the current split to fill most of the height
set history=1000                                           " Remember last 1000 commands
set scrolloff=5                                            " Keep at least 4 lines below cursor
set hidden                                                 " Allow buffer change w/o saving
set backspace=indent,eol,start                             " Sane backspace behavior
set wildmenu                                               " Adds tab completion for exe commands
set tabstop=4                                              " Make an tab 4 spaces long
set shiftwidth=4                                           " Make an indent 4 spaces long
set noexpandtab                                            " Use spaces when tab is used in insert mode
set softtabstop=4                                          " Make an indent 4 spaces long in insert mode
set list                                                   " Allow us to see special characters
set listchars=eol:$,tab:▸␣,trail:~,extends:>,precedes:<    " Set tab character.
set ignorecase                                             " Case insensitive searches (must be on for smartcase to work)
set smartcase                                              " By adding a uppercase letter it will be case sensitive
set tags+=tags                                             " Tell vim to look for a tags file
set background=dark                                        " Make the theme dark
set autoindent                                             " Make new line the same indentation level as the last line
set nospell                                                " Turn off spelling correction
set laststatus=2                                           " Turn on the status line
set hlsearch                                               " Highlight search items that match
set omnifunc=syntaxcomplete#Complete                       " Turn on Omnicompletion (it is off by defualt)
set wildignore+=*/tmp/*,*.so,*.swp,*.zip                   " Ignore certain files
set inccommand=nosplit                                     " Add in live substitution
set mouse=a                                                " Turn mouse mode on for all modes (normal, visual, insert, ... etc).
set undodir=~/.config/nvim/undo-dir                        " Give a directory for storing undo data for files
set undofile                                               " Tell vim that we can undo files even after re-opening it.
set shortmess+=c                                           " Suppress the annoying 'match x of y', 'The only match' and 'Pattern not found' messages
set colorcolumn=100                                        " Turn the color column on (which will be turned purple at column 100).
set encoding=UTF-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                               Plugin Management                               "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

" Unused plugins
" Plug 'Kazark/vim-SimpleSmoothScroll'
" Plug 'mustache/vim-mustache-handlebars'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'easymotion/vim-easymotion'
" Plug 'rust-lang/rust.vim'
" Plug 'mxw/vim-jsx'
" Plug 'mileszs/ack.vim'

" Visual stuff
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'machakann/vim-highlightedyank'
Plug 'airblade/vim-gitgutter'
Plug 'unblevable/quick-scope'
Plug 'junegunn/rainbow_parentheses.vim'

" Small vim changes, that makes it easier to use every day
Plug 'airblade/vim-rooter'                 " Go to the root of the project
Plug 'mhinz/vim-startify'                  " Have a start screen
Plug 'sheerun/vim-polyglot'                " Syntax packs
Plug 'tpope/vim-commentary'                " Comment code
Plug 'tpope/vim-surround'                  " Can put quotes around verbs
Plug 'tpope/vim-repeat'                    " Better repeat support
Plug 'christoomey/vim-system-copy'         " Copy into system clip board
Plug 'jiangmiao/auto-pairs'                " Insert or delete brackets, parens, quotes in pair
Plug 'alvan/vim-closetag'                  " Auto close html tags
Plug 'godlygeek/tabular'                   " Align symbols like = and :
Plug 'liuchengxu/vim-which-key'            " Remember mappings
Plug '~/.config/nvim/plugged/vim-center'   " Help center vim headers with delimiters on both sides
" Plug 'cxgslegend/vim-center'

" Notes
Plug 'fmoralesc/vim-pad'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc-after'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'                                 " Expand with <c-y>,
Plug 'tpope/vim-fugitive'                              " Git support within vim
Plug 'dhruvasagar/vim-table-mode'                      " Toggle table mode for writing markdown tables
" Plug 'neoclide/coc.nvim', {'branch': 'release'}        "

" Learn to vim correctly
" Plug 'fmoralesc/vim-tutor-mode'                        " Allows you to create interactive vim tutorials
Plug 'dahu/VimRegexTutor'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}

" Custom text objects
Plug 'kana/vim-textobj-user'               " Get a plugin for defining custom objects
" Predefined custom objects
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-function'
Plug 'sgur/vim-textobj-parameter'

call plug#end()
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                                  Autocommands                                 "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("autocmd")
	augroup cleargroup
		autocmd!
		" Quit vim if nerd tree is the only open window open
		autocmd Bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

		" Re-source my init.vim file if I save it
		autocmd BufWritePost init.vim source $MYVIMRC | source ~/.config/nvim/after/ftplugin/vim/folding.vim

		" When I open my vimrc file, start it completly folded
		autocmd BufRead init.vim set foldlevel=0

		" Set json files to have javascript syntax highlighting
		autocmd BufNewFile,BufRead *.json set ft=javascript

		" Delete all trailing white space before saving
		autocmd BufWritePre *.* :%s/\s\+$//e

		" Jump to the last place we were in a file
		autocmd BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

		" TODO
		autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

		" Turn on rainbow brackets in all files
		autocmd FileType * RainbowParentheses

		" Set some vim settings for when we are writing git commits
		autocmd Filetype gitcommit setlocal spell tw=72 colorcolumn=73

		" Hide the status bar in which key
		autocmd FileType which_key set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 showmode ruler

		" Define a text object for the vimrc headers over each section (only
		" in vim files).
		autocmd FileType vim call textobj#user#plugin('vimrcheader', {
		\	'header': {
		\     'pattern': ['^"\s*', '\s*"$'],
		\     'select-a': 'ah',
		\     'select-i': 'ih',
		\	},
		\ })
	augroup END
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                                Plug-in Settings                               "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
colorscheme hybrid

" Make color column purple color
highlight ColorColumn ctermbg=60

set showtabline=0

" Floating windows are yucky yucky yucky. No good, very bad.
let g:which_key_use_floating_win                                          = 0
let g:which_key_map                                                       = {}
" By default timeoutlen is 1000 ms
set timeoutlen=400

let g:table_mode_corner_corner                                            = "+"
let g:table_mode_header_fillchar                                          = "="

" Setup airline to make vim look nice
let g:airline_powerline_fonts                                             = 1
let g:airline_theme                                                       = 'bubblegum'

" Setup vim pad for taking nice markdown notes
let g:pad#dir                                                             = "~/Dropbox/vim-notes/"
let g:pad#search_backend                                                  = "ag"
let g:pad#default_file_extension                                          = ".md"
let g:pad#default_format                                                  = "pandoc"
let g:pad#window_height                                                   = 14

" Setup pandoc to make a pdf from markdown with the ':Pandoc pdf' command
let g:pandoc#formatting#mode                                              = "sA"
let g:pandoc#formatting#smart_autoformat_on_cursormoved                   = 1
let g:pandoc#folding#level                                                = 3
let g:pandoc#folding#mode                                                 = "relative"

" Setup git gutter
let g:gitgutter_sign_added              = '⏽'
let g:gitgutter_sign_modified           = '⏽'
let g:gitgutter_sign_removed            = '▓'
let g:gitgutter_sign_removed_first_line = '▓'
let g:gitgutter_sign_modified_removed   = '⏽'
let g:gitgutter_enabled = 1
highlight GitGutterAdd    guifg=#98c379 ctermfg=2
highlight GitGutterChange guifg=#61afef ctermfg=3
highlight GitGutterDelete guifg=#e06c75 ctermfg=1

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#eF5F70' gui=underline ctermfg=81 cterm=underline
let g:qs_max_chars=150

" Assume we can see dot files by default
let g:NERDTreeShowHidden = 1

" Close tags files types
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,php'

" Rainbow brackets config
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

" Dont use floating windows
let g:vim_be_good_floating = 0

" FOR THE LOVE OF GOD, WHY DO PLUGINS SET THEIR OWN MAPPINGS!!!!!!!!!!! I AM
" GOING TO FREAKING LOSE IT I SWEAR.
let g:table_mode_disable_mappings = 1
let g:table_mode_disable_tableize_mappings = 1
let g:table_mode_map_prefix = "<nop>"

" Dont let pad set its own mappings
let g:pad#set_mappings = 0

" Dont let git gutter set its own mappings (we might want to add back in the
" omaps).
let g:gitgutter_map_keys = 0

" Setup python so vim will stop yelling at us.
let g:python_host_prog                                                    = "/usr/local/bin/python2"
let g:python3_host_prog                                                   = "/usr/local/bin/python3"
"
" I don't really ever use :grep, however I set it to use ripgrep here just in case
" I ever do on accident.
if executable('rg')
	set grepprg=rg\ --no-heading\ --vimgrep
	set grepformat=%f:%l:%c:%m
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                                    Mappings                                   "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Non-leader keys
inoremap <Left>  <nop>
inoremap <Right> <nop>
inoremap <Up>    <nop>
inoremap <Down>  <nop>

noremap <Left>   <esc>:echo "Don't be an idiot"<cr>
noremap <Right>  <esc>:echo "Don't be an idiot"<cr>
noremap <Up>     <esc>:echo "Don't be an idiot"<cr>
noremap <Down>   <esc>:echo "Don't be an idiot"<cr>

" Move up and down by visible lines if current line is wrapped
noremap <buffer> k gk
noremap <buffer> j gj

" Quit current buffer
nnoremap q :quit<cr>

" Evaluate shell command under cursor, and replace with output.
noremap Q !!$SHELL<cr>

" This unsets the "last search pattern" register by hitting return
nnoremap <cr> :noh<cr>

" Leader keys under which key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Single key mappings
let g:which_key_map['.'] = [ ':e $MYVIMRC'       , 'open init' ]
let g:which_key_map[','] = [ 'Startify'          , 'start screen' ]
let g:which_key_map[';'] = [ ':q!'               , 'force quit' ]
let g:which_key_map[' '] = [ '<c-^>'             , 'last buffer' ]

" Did the mapping outside of which key to address range bug. Will remove and
" move back inside of which key if fixed in the future.
nnoremap <Leader>/ :Commentary<cr>
vnoremap <Leader>/ :Commentary<cr>
let g:which_key_map["/"] = 'comment'

" Group mappings

" a is for altering the file in some way (line or whole doc)
let g:which_key_map.a = {
\	'name' : '+alter' ,
\	's' : [':call FixLastSpellingError()'      , 'fix spelling'],
\	'c' : [':CenterTextOfLength 81'            , 'center header'],
\}
nnoremap <Leader>a= :Tabularize /=<cr>
vnoremap <Leader>a= :Tabularize /=<cr>
nnoremap <Leader>a: :Tabularize /:<cr>
vnoremap <Leader>a: :Tabularize /:<cr>
let g:which_key_map.a["="] = 'align ='
let g:which_key_map.a[":"] = 'align :'

" b is for buffer
let g:which_key_map.b = {
\	'name' : '+buffer' ,
\	'd' : ['bd'                                , 'delete-buffer']   ,
\	'n' : ['bnext'                             , 'next-buffer']     ,
\	'p' : ['bprevious'                         , 'previous-buffer'] ,
\	'?' : ['Buffers'                           , 'fzf-buffer']      ,
\}

" f is for toggle
let g:which_key_map.f = {
\	'name' : '+file' ,
\	's' : [':wa'                               , 'save all'],
\	'f' : [':Files'                            , 'search files'],
\	't' : [':Rg'                               , 'search text'],
\}
" I need to do the binding here to get echo'ing to work
nnoremap <leader>fw :call SaveAndSource()<cr>
let g:which_key_map.f.w = 'write and source'

" g is for git
let g:which_key_map.g = {
\	'name' : '+git' ,
\	'a' : [':Git add .'                        , 'add all'],
\	'A' : [':Git add %'                        , 'add current'],
\	'b' : [':Git blame'                        , 'blame'],
\	'c' : [':Git commit'                       , 'commit'],
\	'd' : [':Git diff'                         , 'diff'],
\	'D' : [':Gdiffsplit'                       , 'diff split'],
\	'g' : [':GGrep'                            , 'git grep'],
\	'G' : [':Gstatus'                          , 'status'],
\	'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
\	'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
\	'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
\	'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
\	'l' : [':Git log'                          , 'log'],
\	'p' : [':Git push'                         , 'push'],
\	'P' : [':Git pull'                         , 'pull'],
\	'r' : [':GRemove'                          , 'remove'],
\	's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
\	't' : [':GitGutterSignsToggle'             , 'toggle signs'],
\	'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
\}

" n is for notes
let g:which_key_map.n = {
\	'name' : '+notes' ,
\	'l' : [':Pad ls'                           , 'list'],
\	'n' : [':Pad new'                          , 'new'],
\	's' : ['<Plug>(pad-search)'                , 'search'],
\	'g' : [':call ConvertMarkdownToPDF()'      , 'generate pdf'],
\}

" s is for search
let g:which_key_map.s = {
\	'name' : '+search' ,
\	'/' : [':History/'                         , 'search history'],
\	'b' : [':BLines'                           , 'buffer lines'],
\	'B' : [':Buffers'                          , 'open buffers'],
\	'c' : [':Commits'                          , 'commits'],
\	'C' : [':BCommits'                         , 'buffer commits'],
\	'g' : [':GFiles'                           , 'git files'],
\	'G' : [':GFiles?'                          , 'modified git files'],
\	'h' : [':History'                          , 'file history'],
\	'H' : [':History:'                         , 'command history'],
\	'l' : [':Lines'                            , 'lines'] ,
\	'm' : [':Marks'                            , 'marks'] ,
\	'M' : [':Maps'                             , 'normal maps'] ,
\	'p' : [':Helptags'                         , 'help tags'] ,
\	'P' : [':Tags'                             , 'project tags'],
\	'S' : [':Colors'                           , 'color schemes'],
\	'T' : [':BTags'                            , 'buffer tags'],
\	'w' : [':Windows'                          , 'search windows'],
\	'y' : [':Filetypes'                        , 'file types'],
\}

" t is for toggle
let g:which_key_map.t = {
\	'name' : '+toggle' ,
\	's' : [':set spell!'                       , 'spelling'],
\	'n' : [':NERDTreeToggle'                   , 'nerdtree'],
\	}
" For some reason, I can't bind it in the map above
nnoremap <leader>tt :TableModeToggle<cr>
let g:which_key_map.t.t = 'table mode'

" v is for vim
let g:which_key_map.v = {
\	'name' : '+vim' ,
\	'v' : [':call StartVimBeGood()'             , 'vim be good'],
\	'r' : [':VimRegexTutor'                     , 'regex tutor'],
\}

" w is for window
let g:which_key_map.w = {
\	'name' : '+window' ,
\	'h' : ['<C-W>h'                            , 'move left'],
\	'j' : ['<C-W>j'                            , 'move down'],
\	'k' : ['<C-W>k'                            , 'move up'],
\	'l' : ['<C-W>l'                            , 'move right'],
\	's' : [':split'                            , 'horizontal split'],
\	'v' : [':vsplit'                           , 'vertical split'],
\}

call which_key#register('<Space>', "g:which_key_map")

inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" nvim terminal mappings
if has('nvim')
	tnoremap <Esc> <c-\><c-n>
	tnoremap <A-[> <Esc>
	tnoremap <A-h> <c-\><c-n><c-w>h
	tnoremap <A-j> <c-\><c-n><c-w>j
	tnoremap <A-k> <c-\><c-n><c-w>k
	tnoremap <A-l> <c-\><c-n><c-w>l
	tnoremap <A-h> <c-w>h
	tnoremap <A-j> <c-w>j
	tnoremap <A-k> <c-w>k
	tnoremap <A-l> <c-w>l
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                                Custom Functions                               "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! StartVimBeGood()
	:e vimbegood
	:VimBeGood
endfunction

function! FixLastSpellingError()
	normal! mm[s1z=`m
endfunction

function! ConvertMarkdownToPDF()
	let current_filetype = &filetype

	if current_filetype ==? "markdown"
		execute "Pandoc! pdf"
	endif
endfunction

" Will save file, and Source files even if it is a python file
function! SaveAndSource()
	:w
	let current_filetype = &filetype

	if current_filetype ==? "vim"
		:source %
	elseif current_filetype ==? "python"
		:py3file %
	endif
endfunction

" function! CreateMarkdownHeader()
" 	normal! mmyyp0vg_r=`m
" endfunction

" function! CenterHeader()
" 	execute "normal! 0r 45i \<esc>g_45i \<esc>"
" 	normal! g_r l
" 	execute "set expandtab"
" 	execute "center"
" 	normal! 81|r"ld$
" 	normal! 0r"
" 	execute "set noexpandtab"
" endfunction
