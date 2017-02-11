set nocompatible "be iMproved

filetype plugin indent on "required for vundle
" automatically set up vundle and install all bundles if vundle is not installed
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
	echo "Installing Vundle.."
	echo ""
	silent !mkdir -p ~/.vim/bundle
	silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
	let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'


let mapleader = ","

nnoremap <Leader>fb :FufBuffer<CR>

" Spacing
set ts=2
set expandtab
set shiftwidth=2

" General options
nnoremap ; :

set number
set mouse=a
set t_Co=256                          " enable 256 colors
set autoindent
set showmode
set complete+=k                       " enable dictionary completion
set wildmenu  			      " cmd line complet
set wildmode=list:longest,full
set wildignore=*.o,*~,*.pyc,*.pyo,*.so,*.sw*,__pycache__,*/tmp/*,*.swp,*.zip 
set ttyfast
set backspace=2                       " full backspacing capabilities
set backspace=indent,eol,start        " behave like a normal backspace
set magic                             " enables regex highlight
set showmatch                         " show matching brackets (),{},[]
set noswapfile

syntax on
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
let g:solarized_contrast="high"

" Automatic paste mode:
" https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
