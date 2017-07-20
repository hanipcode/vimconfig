set nocompatible              " be iMproved, required

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'jiangmiao/auto-pairs'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'prettier/vim-prettier'
Plugin 'VundleVim/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'crusoexia/vim-javascript-lib'
Plugin 'mxw/vim-jsx'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
"Plugin 'scrooloose/syntastic'
"Plugin 'tomasr/molokai'
Plugin 'alvan/vim-closetag'
Plugin 'SirVer/UltiSnips'
Plugin 'git://github.com/w0ng/vim-hybrid/'
Plugin 'mattn/emmet-vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'briancollins/vim-jst'
Plugin 'mtscout6/syntastic-local-eslint.vim'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'shougo/neocomplete.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'git://github.com/honza/vim-snippets.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"setting for turn necomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_close_preview = 1
let g:neocomplete#enable_auto_select = 1


"https://medium.com/brigade-engineering/sharpen-your-vim-with-snippets-767b693886db#.s8k417oc0

let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
set softtabstop=2
set autoindent
set textwidth=120
set nu

"Hybird color scheme
set background=dark
colorscheme jellybeans
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.

"EMMET
let g:user_emmet_mode='inv'

"JSX
let g:jsx_ext_required = 0

"CtrlP setting
set wildignore+=*/node_modules/*,*.so,*.swp,*.zip   
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Syntastic setting
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'



let g:ctrlp_switch_buffer = 'e'

"Transparent Background
"hi Normal ctermfg=252 ctermbg=none
syntax on
autocmd BufNewFile,BufRead *.styl set filetype=stylus


"transparent
let g:jellybeans_overrides = {
      \    'background': { 'ctermbg': 'none', '256ctermbg': 'none'  },
      \}


"indent guide
let g:indent_guides_enable_on_vim_startup = 1

"prettier
"
"" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0

let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync

" max line lengh that prettier will wrap on
let g:prettier#config#print_width = 100
"
" " number of spaces per indentation level
let g:prettier#config#tab_width = 2
"
"" use tabs over spaces
let g:prettier#config#use_tabs = 'false'

" print semicolons
let g:prettier#config#semi = 'true'
"
" " single quotes over double quotes
let g:prettier#config#single_quote = 'true' 
"
"" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true' 

" put > on the last line instead of new line
" g:prettier#config#jsx_bracket_same_line = 'true' 
"
" " none|es5|all
let g:prettier#config#trailing_comma = 'es5'
"
"" flow|babylon|typescript|postcss|json|graphql
let g:prettier#config#parser = 'flow'
" "
" "
" "
"
" config for autoclose
"filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx'
