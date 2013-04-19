set modelines=0 " CVE-2007-2438 evita a checagem de comandos do arquivo

set nocompatible "compatibilidade com o VI
set backspace=2

set ruler "mostra arquivo linha e a coluna do cursor
set wildmenu "menu com tab
set wildmode=list:longest
set number "mostra os numeros das linhas

syntax on "colorir de acordo com a linguagem
set autoindent "identacao
set smartindent "auto indentacao quando cria uma nova linha

set hlsearch "colore a busca
set ignorecase
set smarttab "adciona espacos em brancos em alguns casos quando usa o tab
set expandtab
set vb "visual bell
set autoread " carrega o arquivo se ele tiver atualizacao

filetype on "identifica o tipo de arquivo
filetype plugin indent on "identacao para o tipo de linguagem
au FileType python set omnifunc=pythoncomplete#Complete
inoremap <C-space> <C-x><C-o>
set nofoldenable    " disable folding
setlocal ofu=syntaxcomplete#Complete
"set encoding=utf-8

set scrolloff=3 "numero de linhas acima e abaixo do cursor
set showmatch "mostra as chaves que se completam
set ttyfast "terminal com conexao rapida
set backspace=indent,eol,start "altera o comportamento do del
"set expandtab
set laststatus=2 "status line sempre aparece

set switchbuf=useopen
set winwidth=100
set winheight=25


"set list
"set listchars=trail:.,tab:>-,eol:<,nbsp:%
let mapleader = ","
set showcmd
filetype plugin on
"pathogen
call pathogen#infect()
call pathogen#helptags()

let g:user_zen_settings = {
			\  'indentation' : '  ',
			\  'perl' : {
			\    'aliases' : {
			\      'req' : 'require '
			\    },
			\    'snippets' : {
			\      'use' : "use strict\nuse warnings\n\n",
			\      'warn' : "warn \"|\";",
			\    }
			\  }
			\}

"virtualenv
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
        project_base_dir = os.environ['VIRTUAL_ENV']
        sys.path.insert(0, project_base_dir)
        activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
        execfile(activate_this, dict(__file__=activate_this))
EOF
