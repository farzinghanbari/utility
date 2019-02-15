set nocompatible					"We want the latest VIM settings/options.

so ~/.vim/plugins.vim


syntax enable


set backspace=indent,eol,start				"Make Backspace behave like every other editor
let mapleader=","					"The default leader is \, but a commma is much better
set number						"Let's activate line numbers




"-------------------Visuals---------------------"
colorscheme atom-dark-256 
set t_CO=256				"Use 256 colors. This is useful for Terminal VIM
set guifont=Fira_Code:h16
set linespace=15

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R




"-------------------Search---------------------"
set hlsearch
set incsearch




"-------------------Split Management---------------------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-H> <C-W><C-H>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>




"-------------------Mpping---------------------"

"Make it easy to edit Vimerc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle
nmap <Leader>sb :NERDTreeToggle<cr>




"-------------------Auto-Commands--------------"

"Automatically source the Vimrc file.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
