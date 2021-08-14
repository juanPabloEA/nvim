" Directorio de pluggins
call plug#begin('~/.local/share/nvim/plugged')

" Themes
Plug 'iCyMind/NeoSolarized'

" funtionality
Plug 'scrooloose/nerdtree' " see three source
let g:NERDTreeChDirMode = 2

Plug 'Yggdroot/indentLine' " Show indent line
let g:indentLine_fileTypeExculde = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExculde = ['NERD_tree.*', 'term:.*']

Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'} " Autocomplete
Plug 'Shougo/neco-syntax' " General Font in autocomplete
let g:deoplete#enable_at_startup = 1
augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!
augroup END

Plug 'sirver/ultisnips' "snippets
Plug 'honza/vim-snippets' 
let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'

" sintaxis
Plug 'sheerun/vim-polyglot'
Plug 'othree/html5.vim', {'for': 'html'}
Plug 'pangloss/vim-javascript', {'for': 'javascript'}

Plug 'ctrlpvim/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](\.(git|hg|svn)|node_modules)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --explude-standard']

Plug 'tpope/vim-surround'

call plug#end()

" Configuraciones
set number
set title
set mouse=a

set nowrap

set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab

set hidden

set ignorecase
set smartcase

set spelllang=en,es

"Set configuration to theme

set termguicolors
set background=dark
colorscheme NeoSolarized

map <C-a> <esc>ggVG<CR> " Select All

" map three source
map <F2> :NERDTreeToggle<CR>
