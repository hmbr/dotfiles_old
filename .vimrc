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

set vb "visual bell

filetype on "identifica o tipo de arquivo
filetype plugin indent on "identacao para o tipo de linguagem
setlocal omnifunc=syntaxcomplete#Complete


"set encoding=utf-8

set scrolloff=3 "numero de linhas acima e abaixo do cursor
set showmatch "mostra as chaves que se completam
set ttyfast "
set backspace=indent,eol,start "altera o comportamento do del

set laststatus=2 "status line sempre aparece

"set list
"set listchars=trail:.,tab:>-,eol:<,nbsp:%

"pathogen
call pathogen#infect()


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


