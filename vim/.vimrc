"Main Preferences
colorscheme jellybeans
set mouse=a
set ttymouse=xterm2
set number
set smartindent
set tabstop=3
set shiftwidth=3
set autoread
set listchars=tab:▸\ ,eol:¬
set encoding=utf-8

"Invisible character colors 
highlight NonText ctermbg=151515
highlight SpecialKey ctermbg=151515
set list
"set listchars=tab:··
hi Visual  cterm=NONE ctermbg=darkgrey guibg=darkgrey 
"hi Visual term=reverse cterm=reverse guibg=Grey


" Makes search act like search in modern browsers
set incsearch 
nnoremap * *N 
nnoremap <C-F8> :nohlsearch<CR>
vnoremap * y :execute ":let @/=@\""<CR> :execute "set hlsearch"<CR>
" подсветил, выделил, выполнил.


set cursorline
hi CursorLine   cterm=NONE ctermbg=black guibg=grey 
hi CursorColumn cterm=NONE ctermbg=black guibg=grey 
"nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

"Try enable completion
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'
" PLUGINS 
" see on github for other ways to install
"	Plugin 'KabbAmine/vCoolor.vim'	
	Plugin 'tpope/vim-fugitive'
	Plugin 'L9'
	Plugin 'mattn/emmet-vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'tmhedberg/matchit'
	Plugin 'ryanoasis/vim-devicons'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'matze/vim-move'
	Plugin 'lyokha/vim-xkbswitch'
	Plugin 'jiangmiao/auto-pairs'

	Plugin 'Valloric/YouCompleteMe'
	Plugin 'ternjs/tern_for_vim'
	Plugin 'pangloss/vim-javascript'
	Plugin 'Sass'
	Plugin 'scrooloose/syntastic'
	Plugin 'tpope/vim-surround'
	Plugin 'othree/html5.vim'
	Plugin 'kshenoy/vim-signature'
	Plugin 'scrooloose/nerdcommenter'
" mistake with nerdtree by default	
"	 Plugin 'mhinz/vim-startify'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" |||||||||||||||  NERD TREE   
" "autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" java script syntax
" enable html syntax hightlighting in js
let g:javascript_enable_domhtmlcss = 1

"=========file type? ====================
au! BufRead,BufNewFile *.sass setfiletype sass 

"===========syntastic settings========
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus=2
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']

"===========airline=====================
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="dark"
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1

"  =========================================
let g:move_key_modifier = 'C'
"===========================================
let g:XkbSwitchEnabled = 1
let g:XkbSwitchLib = '/usr/local/lib64/libxkbswitch.so'
let g:XkbSwitchIMappings = ['ru']

" NERD Commenter settings
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable commenter on control-/ in all modes
vmap <C-_> <Leader>c<Space>
map <C-_>  <Leader>c<Space>
imap <C-_>  <esc><Leader>c<space>i
