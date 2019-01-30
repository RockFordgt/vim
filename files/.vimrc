execute pathogen#infect()

"we have 2 solarized schemas to choose from
try
    colorscheme solarized
catch /^Vim\%((\a\+)\)\=:E185/
    set background=light
    colorscheme solarized8
endtry

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
set shiftwidth=4
set smarttab
set expandtab "zamienia taby na spacje
set autoindent
set foldmethod=syntax

"how meny collors ther is
"setting appropriate color scheme depending on GUI or not
if has("gui_running")
    "colorscheme summerfruit
    set guifont=Oxygen\ Mono\ 14  
else
    set t_Co=256
    colorscheme summerfruit256
endif

set spell

"wizualne taby (http://vim.wikia.com/wiki/Highlight_unwanted_spaces)
"https://vi.stackexchange.com/questions/422/displaying-tabs-as-characters
set list
"set listchars=tab:>-
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵

" write as root
cmap w!! w !sudo tee % > /dev/null

"TODO: source colemak.vim

"indent guidelines settings
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_start_level = 2
let g:indent_guides_auto_colors = 0

"https://stackoverflow.com/questions/32154285/folding-expanding-and-colapsing-xml-tags-in-vim-xml-parsing
augroup XML
    autocmd!
    autocmd FileType xml let g:xml_syntax_folding=1
    autocmd FileType xml setlocal foldmethod=syntax
    autocmd FileType xml :syntax on
    autocmd FileType xml :%foldopen!
augroup END


