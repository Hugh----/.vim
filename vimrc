" Some decent VIM settings for programming


filetype plugin indent on       " Detect file type.
syntax on                       " turn syntax highlighting on by default
colorscheme desert

set ai                          " set auto-indenting on for programming
set showmatch                   " auto show matching brackets. works like it does in bbedit.
"set vb                          " turn on the 'visual bell' - which is much quieter than the 'audio blink'
set ruler
set nu
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it should
set nocompatible                " vi compatible is LAME
set background=dark             " Use colours that work well on a dark background (Console is usually black)
set showmode                    " show the current mode
set scrolloff=3                 " 3 lines from the top and bottom of current buffer for cursor.
set backupdir=$HOME/.vim/backup	" Store file~ files to a central place
set shortmess=atI               " Hide startup messages
set mouse=a
set history=200
set showcmd
set incsearch
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"set langmenu=zh_CN.UTF-8
set guifont=consolas:h11
"set guifontwide=NSimsun:h12    "This makes local/regional languages displayed perfectly.
set flash                       " No bell alerts when there are errors.
set noerrorbells
set novisualbell
set t_vb= 
set visualbell t_vb=            " Disable visual bell
set clipboard+=unnamed          " Share clipboard with Windows
set wrap                        " auto wrap.
set bsdir=buffer                " Set the dir of file browser as current working dir.
set autochdir
set tabstop=4                   " Ident width to be 4 for all
set softtabstop=4
set shiftwidth=4
set expandtab

autocmd BufReadPost * cd %:p:h	" When opening a file, set its dir as current working dir.
setlocal noswapfile             " Don't generate swap file and hide it when buffer is deserted.
set bufhidden=hide
set fileformats=unix,mac,dos    " Try to open files in the order of unix, mac and dos. 

set guioptions=                 " Hide GUI menu. F12 to show/hide. 
map <silent> <F12> :if &guioptions =~# 'T' <Bar>  
        \set guioptions-=T <Bar>  
        \set guioptions-=m <bar>  
    \else <Bar>  
        \set guioptions+=T <Bar>  
        \set guioptions+=m <Bar>  
    \endif<CR>


" Set the original position and size of startup window.
"winpos 200 20
"set lines=38
"set columns=118

language messages en_US.utf-8

source $VIMRUNTIME/menu.vim     " Menu on status bar
set wildmenu
set cpo-=<
set wcm=<C-Z>
map <F6> :emenu <C-Z>

" Pathogen
"execute pathogen#infect()

lcd $HOME                       " Set the default startup dir for GVIM.
autocmd BufEnter * lcd %:p:h

" NERDTree Toggle Open/Close -- File dir tree.
nmap <F3>       :NERDTreeToggle<CR>
imap <F3>  <C-O>:NERDTreeToggle<CR>
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd vimenter * NERDTree

nmap <F4>		:TlistToggle<CR>
imap <F4>	<C-0>:TlistToggle<CR>

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

au BufRead,BufNewFile */ansible_playbooks/*.yml set filetype=yaml.ansible

" Show EOL type and last modified timestamp, right after the filename
"set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})%=%l,%c%V\ %P
