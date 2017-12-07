" vundle plugin manager
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'OmniSharp/omnisharp-vim'
"Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'alvan/vim-closetag'
Plugin 'tpope/vim-surround'
"Plugin 'hail2u/vim-css3-syntax'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'digitaltoad/vim-jade'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
"Plugin 'vim-scripts/taglist.vim'

call vundle#end()
filetype plugin indent on

" misc
syntax enable
set number
set showmatch
let python_highlight_all = 1
"set foldmethod=indent

" formatting
 
set autoindent
set noexpandtab
"set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set backspace=2

" c#
autocmd FileType cs set tabstop=4 shiftwidth=4

" key mapping
map <Space> <Leader>

ino jj <esc>
cno jj <c-c>

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>


" plugins
map <Leader>n :NERDTreeToggle<CR>
"ino <Leader>gd :OmniSharpGotoDefinition<CR>

" force.com
"if has ("unix")
	"let &runtimepath=&runtimepath . ',~/.vim/vim-force.com'
"endif
"runtime ftdetect/vim-force.com.vim

