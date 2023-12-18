map <F3> 0i#
map <F4> :set hls!<CR>
map <F5> :set invpaste<CR>
map <F6> :set list!<CR>
map <F7> :set linebreak! number!<CR>
map <F8> :set spell!<CR>
set autoindent
set background=dark
set expandtab
set hlsearch
set ignorecase
set linebreak
set number
set ruler
set shiftwidth=2
set showcmd
set smartcase
set smartindent
set smarttab
set splitbelow
set splitright
set tabstop=2
set term=xterm-256color
if &diff
  syntax off
else
  syntax on
endif
autocmd FileType * set formatoptions+=t
autocmd FileType * set formatoptions-=ro
augroup tmux
  autocmd!
  if exists('$TMUX')
    autocmd BufReadPost,FileReadPost,BufNewFile,FocusGained,TabEnter * call system("tmux rename-window 'vim|" .  expand("%:t") . "'")
    autocmd VimLeave,FocusLost * call system("tmux set-window-option automatic-rename")
  endif
augroup END
