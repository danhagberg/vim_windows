set background=dark
set et
set ts=4
set sw=4
set nobackup
set ai
au BufRead,BufNewFile *.g set syntax=antlr3
set statusline=%f%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set history=100
set incsearch
set nobackup
set noundofile
set fileformats=unix,dos,mac
colorscheme ir_black

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif

map #7 :TlistToggle<CR>

filetype plugin indent on

"TODO: Search for better way to do this.
set tags=./tags,../tags,../../tags,../../../tags

execute pathogen#infect()
syntax on

:nmap \q :nohlsearch<CR>
:nmap <C-n> :bnext<CR>
:nmap <C-p> :bprev<CR>

"CtrlP mapping"
:nmap \p :CtrlP<CR>
:let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

"NerdTree
:nmap \n :NERDTreeToggle<CR>

