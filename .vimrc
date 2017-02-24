" Vim Config
set nocompatible
set laststatus=2  " show status bar
set shiftwidth=2  " (auto) indent
set tabstop=2     " # of spaces <Tab> counts for
set expandtab     " <Tab> -> spaces
set smarttab

set ruler         " show current position
set number        " show line number
" set cursorline    " highlight current line
set colorcolumn=80
set wrap
set showcmd
set showmode
set showmatch
set showbreak=\ \ \ \>\ \ \
set hlsearch      " highlight search
set backspace=indent,eol,start
set tags=./tags;/
set mouse=a       " use mouse everywhere

" Indent
set autoindent
set smartindent
set cindent       " support indent like C/C++
  

" Color
" syntax on
" set t_Co=256
" set background=dark
" colorscheme solarized
" colorscheme morning 

" Fold
set foldmethod=syntax
set foldenable
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>  " control fold by space key

let g:xml_syntax_folding=1
set foldlevelstart=99     " no folds closed
set omnifunc=syntaxcomplete#Complete

" case insensetive
set ignorecase
set smartcase

hi Normal ctermbg=None

" Vundle Config for YouCompleteMe
set nocompatible
filetype off              " required!


set rtp+=~/.vim/bundle/vundle
call vundle#rc()


Bundle 'gmarik/vundle'    


Bundle 'Valloric/YouCompleteMe'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'


filetype plugin indent on
" end Vundle Config

" YouCompleteMe Config
let mapleader = ","  " 这个leader就映射为逗号“，”
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"Do not ask when starting vim
"let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1


" Color
syntax on
set t_Co=256
set background=dark
" colorscheme solarized
colorscheme morning 

" reset again to cover some change made by Vundle
set showcmd
set showmode
set showmatch

" do not show underline
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
