execute pathogen#infect()
syntax on
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p

"close vim when only nerdtree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


autocmd BufEnter CMakeLists setf cmake
autocmd BufEnter *.qml setf qml
au FileType xml setlocal foldmethod=syntax

"https://jeffkreeftmeijer.com/vim-number/
" turn hybrid line numbers on
:set number relativenumber

" turn hybrid line numbers off
":set nonumber norelativenumber
":set nonu nornu

set tabstop=4
set expandtab "zamienia taby na spacje
set autoindent
set foldmethod=syntax
"how meny collors ther is
set t_Co=256
"setting appropriate color scheme depending on GUI or not
if has("gui_running")
  "colorscheme summerfruit
  colorscheme solarized
  set guifont=Oxygen\ Mono\ 14  
else
  colorscheme summerfruit256
endif

set spell

set spell
"wizualne taby (http://vim.wikia.com/wiki/Highlight_unwanted_spaces)
"https://vi.stackexchange.com/questions/422/displaying-tabs-as-characters
set list
"set listchars=tab:>-
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵
cmap w!! w !sudo tee % > /dev/null
"source colemak.vim
set ts=4 sw=4 noet
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_start_level = 2
