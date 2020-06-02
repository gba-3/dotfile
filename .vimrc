set encoding=utf-8
set fileencoding=utf-8
set smartindent
set shiftwidth=2
set autoindent
set number
set title
set wrap "長いテキストの折り返し

" バックスペースでなんでも消せるようにする
set backspace=indent,eol,start

"setting
set nobackup
set noswapfile
set autoread
set showcmd

set splitbelow

set expandtab
set tabstop=2
set laststatus=2

call plug#begin()
Plug 'jacoborus/tender.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-lsp-icons'
Plug 'tpope/vim-fugitive'

Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'

Plug 'mattn/vim-goimports'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimlab/split-term.vim'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tomasr/molokai'
Plug 'simeji/winresizer'
Plug 'prettier/vim-prettier'
Plug 'jacoborus/tender.vim'

call plug#end()

" ------colorscheme------
colorscheme tender

" ------NERDTree------
map <C-n> :NERDTreeToggle<CR>

" ------GoImports------
let g:goimprots = 1

"------Keymap------
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

"------Indent------
let g:indent_guides_enable_on_vim_startup = 1

"------airline------
let g:airline_theme='wombat'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.crypt = '🔒'    "暗号化されたファイル
let g:airline_symbols.linenr = '¶'      "行
let g:airline_symbols.branch = '⭠'    "gitブランチ
let g:airline_symbols.paste = 'ρ'     "ペーストモード
let g:airline_symbols.spell = 'Ꞩ'     "スペルチェック
let g:airline_symbols.notexists = '∄'   "gitで管理されていない場合
let g:airline_symbols.whitespace = 'Ξ'  "空白の警告(余分な空白など)

set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを表示
set ruler "ステータスラインの右側にカーソルの現在位置を表示する
 
"左側に使用されるセパレータ
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
"右側に使用されるセパレータ
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.crypt = '🔒'		"暗号化されたファイル
let g:airline_symbols.linenr = '¶'			"行
let g:airline_symbols.maxlinenr = '㏑'		"最大行
let g:airline_symbols.branch = '⭠'		"gitブランチ
let g:airline_symbols.paste = 'ρ'			"ペーストモード
let g:airline_symbols.spell = 'Ꞩ'			"スペルチェック
let g:airline_symbols.notexists = '∄'		"gitで管理されていない場合
let g:airline_symbols.whitespace = 'Ξ'	"空白の警告(余分な空白など)

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"------LSP config------
nmap <silent> gd :LspDefinition<CR>
nmap <silent> <f2> :LspRename<CR>
nmap <silent> K :LspHover<CR>
nmap <silent> gr :LspReferences<CR>
nmap <silent> gi :LspImplementation<CR>
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:asyncomplete_popup_delay = 200
let g:lsp_text_edit_enabled = 0

