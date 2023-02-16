set encoding=utf-8

" Install plug-vim if it is missing
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Set tabs 'correctly'. Here be dragone...
set tabstop=4
set shiftwidth=0
set noexpandtab

" Line numbers, scrolling, etc.
set number relativenumber
set scrolloff=999

" Spelling
autocmd FileType tex,markdown setlocal spell
set spelllang=en_gb
"" Map <C-l> to correct last spelling mistake and return cursor to current
"" position
inoremap <C-l> <Esc>[sz=1<Enter><c-o>a

" Plugins
call plug#begin()

Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
	let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
	let g:tex_flavor='latex'
	let g:vimtex_view_method='mupdf'
	set conceallevel=2
	let g:tex_conceal='abdmg'
	let g:vimtex_quickfix_latexlog = {
			  \ 'overfull' : 0,
			  \ 'underfull' : 0,
			  \ 'packages' : {
			  \   'hyperref' : 0,
          \ },
	\}


Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'https://github.com/prashanthellina/follow-markdown-links'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'SidOfc/mkdx'
Plug 'vim-scripts/indentpython.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'https://github.com/NLKNguyen/papercolor-theme'
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'chrisbra/csv.vim'
Plug 'dense-analysis/ale'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'jalvesaq/Nvim-R'
Plug 'gaalcaras/ncm-R'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'

" Vim 8 only
if !has('nvim')
	Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()


" Add Zotero citations
function! ZoteroCite()
	" pick a format based on the filetype (customize at willm
	let format = &filetype =~ '.*tex' ? 'biblatex' : 'pandoc'
	let api_call = 'http://127.0.0.1:23119/better-bibtex/cayw?format='.format.'&brackets=1'
	let ref = system('curl -s '.shellescape(api_call))
	return ref
endfunction
noremap <leader>z "=ZoteroCite()<CR>p
inoremap <C-z> <C-r>=ZoteroCite()<CR>

" PEP8 indentation
autocmd FileType py
	\ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" YouCompleteMe config
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Colours (and display)
set t_Co=256
set background=dark
colorscheme PaperColor 
set laststatus=2

" Better tab-completion
set wildmode=longest,list,full
set wildmenu

" Make buffers work
set hidden

" R
let R_start_libs = 'base,stats,graphics,grDevices,utils,methods,tidyverse'

" Normal backspace behaviour
set backspace=indent,eol,start
