" Iniciar el bloque de plugins
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'vim-python/python-syntax'
Plug 'Valloric/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'
Plug 'jpalardy/vim-slime'

" Markdown plugin 
Plug 'plasticboy/vim-markdown'

" Snippet plugin 
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'

" Completion plugin 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Enable vimtex
let g:tex_flavor = 'latex'

" Viewer settings
let g:vimtex_view_method = 'zathura'  " Or your preferred PDF viewer

" Compiler settings
let g:vimtex_compiler_method = 'latexmk'


" Finalizar el bloque de plugins
call plug#end()

" Habilitar el resaltado de sintaxis
syntax on

" Mostrar número de líneas
set number

" Habilitar el uso del mouse
set mouse=a

" Configuración de espacios y tabulaciones
set tabstop=4
set shiftwidth=4
set expandtab
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": ":.2"}
let g:slime_dont_ask_default = 1

" Habilitar el copiado y pegado con el portapapeles del sistema
set clipboard=unnamedplus

" Specific syntax settings 
autocmd BufNewFile,BufRead *.tex setlocal syntax=tex 
autocmd BufNewFile,BufRead *.py setlocal syntax=python 
autocmd BufNewFile,BufRead *.md setlocal syntax=markdown

" vimtex settings
let g:tex_flavor = 'latex' 
let g:vimtex_view_method = 'zathura' 
let g:vimtex_compiler_method = 'latexmk'


let g:UltiSnipsExpandTrigger="<tab>" 
let g:UltiSnipsJumpForwardTrigger="<c-b>" 
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" coc.nvim settings for various languages 
let g:coc_global_extensions = ['coc-snippets', 'coc-pyright', 'coc-texlab', 'coc-markdownlint']

" Esquema de color
colorscheme gruvbox
* Usar in plugin para executar codigo
nnoremap <leader>r :w<CR>:!python3 %<CR>

filetype on
filetype plugin on
filetype indent on

